.386
.model FLAT, C

PUBLIC START
EXTERN COUNT	: NEAR
EXTERN SETCLER	: NEAR
EXTERN X_U_Y	: NEAR
EXTERN X_Y		: NEAR

.DATA
S DD 0,0,0,0
S1		DD		00001111000011110000111100001111B, 1010101B
S2		DD		00111100001111000011110000111100B, 1000001B

L		DD		39
N		DD		7
P		DD		1

.CODE
START:
	
	PUSH L
	PUSH OFFSET S1
	CALL COUNT
	ADD ESP, 8

	PUSH 1
	PUSH 34
	PUSH OFFSET S
    CALL SETCLER
	ADD ESP,12

	push L
	PUSH OFFSET S2
	PUSH OFFSET S1
	CALL X_U_Y
	ADD ESP,12

	push L
	PUSH OFFSET S2
	PUSH OFFSET S1
	CALL X_Y
	ADD ESP,12

	RET
END