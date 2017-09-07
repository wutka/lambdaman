
module Types = struct
  
type lm_type =
  | Type_Int
  | Type_Bool
  | Type_List of lm_type
  | Type_Record of lm_type list
  | Type_Function of (lm_type list) * lm_type

type lm_value =
  | Val_Int of int
  | Val_Bool of bool
  | Val_List of lm_value list
  | Val_Record of lm_value list
  | Val_Function of (lm_type list) * lm_type

type var_type = Variable of string * lm_type
                            
type lm_statement =
  | Stmt_Value of lm_value
  | Stmt_If of lm_statement * lm_statement * lm_statement
  | Stmt_Let of var_type * lm_statement * lm_statement
  | Stmt_Rec_Ref of lm_statement * int
  | Stmt_App of lm_statement * lm_statement
  | Stmt_Symbol of string                                 
end                                   
