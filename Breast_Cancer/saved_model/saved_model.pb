ЬН
Ы"Є"
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Й
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.9.02v1.9.0-0-g25c197e023ЎЌ
i
inputsPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
L
targetsPlaceholder*
_output_shapes
:*
shape:*
dtype0
Џ
5input_layer_1/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@input_layer_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ё
3input_layer_1/kernel/Initializer/random_uniform/minConst*'
_class
loc:@input_layer_1/kernel*
valueB
 *шЁО*
dtype0*
_output_shapes
: 
Ё
3input_layer_1/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@input_layer_1/kernel*
valueB
 *шЁ>*
dtype0*
_output_shapes
: 
§
=input_layer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform5input_layer_1/kernel/Initializer/random_uniform/shape*
T0*'
_class
loc:@input_layer_1/kernel*
seed2 *
dtype0*
_output_shapes

:*

seed 
ю
3input_layer_1/kernel/Initializer/random_uniform/subSub3input_layer_1/kernel/Initializer/random_uniform/max3input_layer_1/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@input_layer_1/kernel*
_output_shapes
: 

3input_layer_1/kernel/Initializer/random_uniform/mulMul=input_layer_1/kernel/Initializer/random_uniform/RandomUniform3input_layer_1/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@input_layer_1/kernel*
_output_shapes

:
ђ
/input_layer_1/kernel/Initializer/random_uniformAdd3input_layer_1/kernel/Initializer/random_uniform/mul3input_layer_1/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@input_layer_1/kernel*
_output_shapes

:
Б
input_layer_1/kernel
VariableV2*'
_class
loc:@input_layer_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
ч
input_layer_1/kernel/AssignAssigninput_layer_1/kernel/input_layer_1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel

input_layer_1/kernel/readIdentityinput_layer_1/kernel*'
_class
loc:@input_layer_1/kernel*
_output_shapes

:*
T0

$input_layer_1/bias/Initializer/zerosConst*%
_class
loc:@input_layer_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ѕ
input_layer_1/bias
VariableV2*
shared_name *%
_class
loc:@input_layer_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
в
input_layer_1/bias/AssignAssigninput_layer_1/bias$input_layer_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(

input_layer_1/bias/readIdentityinput_layer_1/bias*
T0*%
_class
loc:@input_layer_1/bias*
_output_shapes
:

input_layer_1/MatMulMatMulinputsinput_layer_1/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0

input_layer_1/BiasAddBiasAddinput_layer_1/MatMulinput_layer_1/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
c
input_layer_1/ReluReluinput_layer_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
Џ
5input_layer_2/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@input_layer_2/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ё
3input_layer_2/kernel/Initializer/random_uniform/minConst*'
_class
loc:@input_layer_2/kernel*
valueB
 *bЇО*
dtype0*
_output_shapes
: 
Ё
3input_layer_2/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@input_layer_2/kernel*
valueB
 *bЇ>*
dtype0*
_output_shapes
: 
§
=input_layer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform5input_layer_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*'
_class
loc:@input_layer_2/kernel*
seed2 
ю
3input_layer_2/kernel/Initializer/random_uniform/subSub3input_layer_2/kernel/Initializer/random_uniform/max3input_layer_2/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@input_layer_2/kernel*
_output_shapes
: 

3input_layer_2/kernel/Initializer/random_uniform/mulMul=input_layer_2/kernel/Initializer/random_uniform/RandomUniform3input_layer_2/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@input_layer_2/kernel*
_output_shapes

:
ђ
/input_layer_2/kernel/Initializer/random_uniformAdd3input_layer_2/kernel/Initializer/random_uniform/mul3input_layer_2/kernel/Initializer/random_uniform/min*'
_class
loc:@input_layer_2/kernel*
_output_shapes

:*
T0
Б
input_layer_2/kernel
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@input_layer_2/kernel
ч
input_layer_2/kernel/AssignAssigninput_layer_2/kernel/input_layer_2/kernel/Initializer/random_uniform*
use_locking(*
T0*'
_class
loc:@input_layer_2/kernel*
validate_shape(*
_output_shapes

:

input_layer_2/kernel/readIdentityinput_layer_2/kernel*
T0*'
_class
loc:@input_layer_2/kernel*
_output_shapes

:

$input_layer_2/bias/Initializer/zerosConst*%
_class
loc:@input_layer_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ѕ
input_layer_2/bias
VariableV2*
shared_name *%
_class
loc:@input_layer_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
в
input_layer_2/bias/AssignAssigninput_layer_2/bias$input_layer_2/bias/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@input_layer_2/bias*
validate_shape(*
_output_shapes
:

input_layer_2/bias/readIdentityinput_layer_2/bias*%
_class
loc:@input_layer_2/bias*
_output_shapes
:*
T0
Ѕ
input_layer_2/MatMulMatMulinput_layer_1/Reluinput_layer_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0

input_layer_2/BiasAddBiasAddinput_layer_2/MatMulinput_layer_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
c
input_layer_2/ReluReluinput_layer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0

-y_hat/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@y_hat/kernel*
valueB"      *
dtype0

+y_hat/kernel/Initializer/random_uniform/minConst*
_class
loc:@y_hat/kernel*
valueB
 *я[ёО*
dtype0*
_output_shapes
: 

+y_hat/kernel/Initializer/random_uniform/maxConst*
_class
loc:@y_hat/kernel*
valueB
 *я[ё>*
dtype0*
_output_shapes
: 
х
5y_hat/kernel/Initializer/random_uniform/RandomUniformRandomUniform-y_hat/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
loc:@y_hat/kernel*
seed2 
Ю
+y_hat/kernel/Initializer/random_uniform/subSub+y_hat/kernel/Initializer/random_uniform/max+y_hat/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@y_hat/kernel*
_output_shapes
: 
р
+y_hat/kernel/Initializer/random_uniform/mulMul5y_hat/kernel/Initializer/random_uniform/RandomUniform+y_hat/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@y_hat/kernel*
_output_shapes

:
в
'y_hat/kernel/Initializer/random_uniformAdd+y_hat/kernel/Initializer/random_uniform/mul+y_hat/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*
_class
loc:@y_hat/kernel
Ё
y_hat/kernel
VariableV2*
shared_name *
_class
loc:@y_hat/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
Ч
y_hat/kernel/AssignAssigny_hat/kernel'y_hat/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@y_hat/kernel*
validate_shape(*
_output_shapes

:
u
y_hat/kernel/readIdentityy_hat/kernel*
T0*
_class
loc:@y_hat/kernel*
_output_shapes

:

y_hat/bias/Initializer/zerosConst*
_class
loc:@y_hat/bias*
valueB*    *
dtype0*
_output_shapes
:


y_hat/bias
VariableV2*
shared_name *
_class
loc:@y_hat/bias*
	container *
shape:*
dtype0*
_output_shapes
:
В
y_hat/bias/AssignAssign
y_hat/biasy_hat/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@y_hat/bias*
validate_shape(*
_output_shapes
:
k
y_hat/bias/readIdentity
y_hat/bias*
T0*
_class
loc:@y_hat/bias*
_output_shapes
:

y_hat/MatMulMatMulinput_layer_2/Reluy_hat/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

y_hat/BiasAddBiasAddy_hat/MatMuly_hat/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
Y
y_hat/SigmoidSigmoidy_hat/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
\
classificationsIdentityy_hat/Sigmoid*
T0*'
_output_shapes
:џџџџџџџџџ
S
log_loss/add/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
d
log_loss/addAddy_hat/Sigmoidlog_loss/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
S
log_loss/LogLoglog_loss/add*
T0*'
_output_shapes
:џџџџџџџџџ
M
log_loss/MulMultargetslog_loss/Log*
_output_shapes
:*
T0
D
log_loss/NegNeglog_loss/Mul*
T0*
_output_shapes
:
S
log_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
O
log_loss/subSublog_loss/sub/xtargets*
T0*
_output_shapes
:
U
log_loss/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
log_loss/sub_1Sublog_loss/sub_1/xy_hat/Sigmoid*'
_output_shapes
:џџџџџџџџџ*
T0
U
log_loss/add_1/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
i
log_loss/add_1Addlog_loss/sub_1log_loss/add_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
W
log_loss/Log_1Loglog_loss/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
V
log_loss/Mul_1Mullog_loss/sublog_loss/Log_1*
_output_shapes
:*
T0
V
log_loss/sub_2Sublog_loss/Neglog_loss/Mul_1*
T0*
_output_shapes
:
j
%log_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
n
+log_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
l
*log_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

*log_loss/assert_broadcastable/values/shapeShapelog_loss/sub_2*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
b
)log_loss/assert_broadcastable/values/rankRanklog_loss/sub_2*
T0*
_output_shapes
: 
k
)log_loss/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
'log_loss/assert_broadcastable/is_scalarEqual)log_loss/assert_broadcastable/is_scalar/x*log_loss/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
В
3log_loss/assert_broadcastable/is_valid_shape/SwitchSwitch'log_loss/assert_broadcastable/is_scalar'log_loss/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 

5log_loss/assert_broadcastable/is_valid_shape/switch_tIdentity5log_loss/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0


5log_loss/assert_broadcastable/is_valid_shape/switch_fIdentity3log_loss/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0


4log_loss/assert_broadcastable/is_valid_shape/pred_idIdentity'log_loss/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
§
5log_loss/assert_broadcastable/is_valid_shape/Switch_1Switch'log_loss/assert_broadcastable/is_scalar4log_loss/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*:
_class0
.,loc:@log_loss/assert_broadcastable/is_scalar
З
Slog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualZlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch\log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
І
Zlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch)log_loss/assert_broadcastable/values/rank4log_loss/assert_broadcastable/is_valid_shape/pred_id*<
_class2
0.loc:@log_loss/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
Њ
\log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switch*log_loss/assert_broadcastable/weights/rank4log_loss/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*=
_class3
1/loc:@log_loss/assert_broadcastable/weights/rank
Є
Mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchSlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankSlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Э
Olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityOlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Ы
Olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityMlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

а
Nlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitySlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 

flog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstP^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

blog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1flog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
б
ilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitch*log_loss/assert_broadcastable/values/shape4log_loss/assert_broadcastable/is_valid_shape/pred_id*
T0*=
_class3
1/loc:@log_loss/assert_broadcastable/values/shape*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ќ
klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchNlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*=
_class3
1/loc:@log_loss/assert_broadcastable/values/shape*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

glog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeShapeblog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims*
T0*
out_type0*
_output_shapes
:
ћ
glog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstP^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
џ
alog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillglog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeglog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*

index_type0*'
_output_shapes
:џџџџџџџџџ*
T0
ї
clog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstP^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
н
^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2blog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsalog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeclog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

hlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstP^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

dlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsolog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1hlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

: 
П
klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitch+log_loss/assert_broadcastable/weights/shape4log_loss/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes

: : *
T0*>
_class4
20loc:@log_loss/assert_broadcastable/weights/shape

mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchklog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchNlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes

: : *
T0*>
_class4
20loc:@log_loss/assert_broadcastable/weights/shape
Щ
plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationdlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
validate_indices(*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:

hlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizerlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
э
Ylog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstP^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ц
Wlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualYlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xhlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0

Olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1SwitchSlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankNlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*f
_class\
ZXloc:@log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

Ћ
Llog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeOlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Wlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

ю
2log_loss/assert_broadcastable/is_valid_shape/MergeMergeLlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge7log_loss/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0


#log_loss/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
t
%log_loss/assert_broadcastable/Const_1Const*
dtype0*
_output_shapes
: *
valueB Bweights.shape=

%log_loss/assert_broadcastable/Const_2Const*8
value/B- B'log_loss/assert_broadcastable/weights:0*
dtype0*
_output_shapes
: 
s
%log_loss/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
v
%log_loss/assert_broadcastable/Const_4Const*!
valueB Blog_loss/sub_2:0*
dtype0*
_output_shapes
: 
p
%log_loss/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Х
0log_loss/assert_broadcastable/AssertGuard/SwitchSwitch2log_loss/assert_broadcastable/is_valid_shape/Merge2log_loss/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0


2log_loss/assert_broadcastable/AssertGuard/switch_tIdentity2log_loss/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0


2log_loss/assert_broadcastable/AssertGuard/switch_fIdentity0log_loss/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 

1log_loss/assert_broadcastable/AssertGuard/pred_idIdentity2log_loss/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
k
.log_loss/assert_broadcastable/AssertGuard/NoOpNoOp3^log_loss/assert_broadcastable/AssertGuard/switch_t

<log_loss/assert_broadcastable/AssertGuard/control_dependencyIdentity2log_loss/assert_broadcastable/AssertGuard/switch_t/^log_loss/assert_broadcastable/AssertGuard/NoOp*
T0
*E
_class;
97loc:@log_loss/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
д
7log_loss/assert_broadcastable/AssertGuard/Assert/data_0Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
Л
7log_loss/assert_broadcastable/AssertGuard/Assert/data_1Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
д
7log_loss/assert_broadcastable/AssertGuard/Assert/data_2Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'log_loss/assert_broadcastable/weights:0*
dtype0*
_output_shapes
: 
К
7log_loss/assert_broadcastable/AssertGuard/Assert/data_4Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Н
7log_loss/assert_broadcastable/AssertGuard/Assert/data_5Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*!
valueB Blog_loss/sub_2:0*
dtype0*
_output_shapes
: 
З
7log_loss/assert_broadcastable/AssertGuard/Assert/data_7Const3^log_loss/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

0log_loss/assert_broadcastable/AssertGuard/AssertAssert7log_loss/assert_broadcastable/AssertGuard/Assert/Switch7log_loss/assert_broadcastable/AssertGuard/Assert/data_07log_loss/assert_broadcastable/AssertGuard/Assert/data_17log_loss/assert_broadcastable/AssertGuard/Assert/data_29log_loss/assert_broadcastable/AssertGuard/Assert/Switch_17log_loss/assert_broadcastable/AssertGuard/Assert/data_47log_loss/assert_broadcastable/AssertGuard/Assert/data_59log_loss/assert_broadcastable/AssertGuard/Assert/Switch_27log_loss/assert_broadcastable/AssertGuard/Assert/data_79log_loss/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

7log_loss/assert_broadcastable/AssertGuard/Assert/SwitchSwitch2log_loss/assert_broadcastable/is_valid_shape/Merge1log_loss/assert_broadcastable/AssertGuard/pred_id*
T0
*E
_class;
97loc:@log_loss/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

9log_loss/assert_broadcastable/AssertGuard/Assert/Switch_1Switch+log_loss/assert_broadcastable/weights/shape1log_loss/assert_broadcastable/AssertGuard/pred_id*
T0*>
_class4
20loc:@log_loss/assert_broadcastable/weights/shape*
_output_shapes

: : 

9log_loss/assert_broadcastable/AssertGuard/Assert/Switch_2Switch*log_loss/assert_broadcastable/values/shape1log_loss/assert_broadcastable/AssertGuard/pred_id*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*=
_class3
1/loc:@log_loss/assert_broadcastable/values/shape
ў
9log_loss/assert_broadcastable/AssertGuard/Assert/Switch_3Switch'log_loss/assert_broadcastable/is_scalar1log_loss/assert_broadcastable/AssertGuard/pred_id*
T0
*:
_class0
.,loc:@log_loss/assert_broadcastable/is_scalar*
_output_shapes
: : 

>log_loss/assert_broadcastable/AssertGuard/control_dependency_1Identity2log_loss/assert_broadcastable/AssertGuard/switch_f1^log_loss/assert_broadcastable/AssertGuard/Assert*
T0
*E
_class;
97loc:@log_loss/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
т
/log_loss/assert_broadcastable/AssertGuard/MergeMerge>log_loss/assert_broadcastable/AssertGuard/control_dependency_1<log_loss/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 

log_loss/ToFloat_3/xConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
^
log_loss/Mul_2Mullog_loss/sub_2log_loss/ToFloat_3/x*
T0*
_output_shapes
:
F
log_loss/RankRanklog_loss/Mul_2*
T0*
_output_shapes
: 

log_loss/range/startConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
value	B : *
dtype0

log_loss/range/deltaConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 

log_loss/rangeRangelog_loss/range/startlog_loss/Ranklog_loss/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
q
log_loss/SumSumlog_loss/Mul_2log_loss/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

log_loss/num_present/Equal/yConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
x
log_loss/num_present/EqualEquallog_loss/ToFloat_3/xlog_loss/num_present/Equal/y*
T0*
_output_shapes
: 

log_loss/num_present/zeros_likeConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 

$log_loss/num_present/ones_like/ShapeConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB 

$log_loss/num_present/ones_like/ConstConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ѕ
log_loss/num_present/ones_likeFill$log_loss/num_present/ones_like/Shape$log_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ѓ
log_loss/num_present/SelectSelectlog_loss/num_present/Equallog_loss/num_present/zeros_likelog_loss/num_present/ones_like*
T0*
_output_shapes
: 
О
Ilog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB 
М
Hlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
value	B : *
dtype0*
_output_shapes
: 
б
Hlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapelog_loss/sub_20^log_loss/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
В
Glog_loss/num_present/broadcast_weights/assert_broadcastable/values/rankRanklog_loss/sub_20^log_loss/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
: 
Л
Glog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
value	B : *
dtype0*
_output_shapes
: 

Elog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarEqualGlog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xHlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Qlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchElog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarElog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

е
Slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentitySlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

г
Slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityQlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ц
Rlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityElog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

ѕ
Slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchElog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarRlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*X
_classN
LJloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

qlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

xlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGlog_loss/num_present/broadcast_weights/assert_broadcastable/values/rankRlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*Z
_classP
NLloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/values/rank
Ђ
zlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankRlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ў
klog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0


mlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

mlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityklog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


llog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ђ
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConst0^log_loss/assert_broadcastable/AssertGuard/Mergen^log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
т
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimslog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*

Tdim0*
T0
Ъ
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeRlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*[
_classQ
OMloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/values/shape
І
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchllog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/values/shape*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ч
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeShapelog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims*
_output_shapes
:*
T0*
out_type0
ъ
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConst0^log_loss/assert_broadcastable/AssertGuard/Mergen^log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
л
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFilllog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapelog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
ц
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConst0^log_loss/assert_broadcastable/AssertGuard/Mergen^log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
з
|log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimslog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likelog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:џџџџџџџџџ
є
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConst0^log_loss/assert_broadcastable/AssertGuard/Mergen^log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
н
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimslog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

: 
И
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchIlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeRlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*\
_classR
PNloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape*
_output_shapes

: : 

log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchllog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*\
_classR
PNloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape*
_output_shapes

: : 
Ѕ
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
г
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizelog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
л
wlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConst0^log_loss/assert_broadcastable/AssertGuard/Mergen^log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ё
ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0

mlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankllog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classz
xvloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

jlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
Ш
Plog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergejlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

л
Alog_loss/num_present/broadcast_weights/assert_broadcastable/ConstConst0^log_loss/assert_broadcastable/AssertGuard/Merge*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Ф
Clog_loss/num_present/broadcast_weights/assert_broadcastable/Const_1Const0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
г
Clog_loss/num_present/broadcast_weights/assert_broadcastable/Const_2Const0^log_loss/assert_broadcastable/AssertGuard/Merge*.
value%B# Blog_loss/num_present/Select:0*
dtype0*
_output_shapes
: 
У
Clog_loss/num_present/broadcast_weights/assert_broadcastable/Const_3Const0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ц
Clog_loss/num_present/broadcast_weights/assert_broadcastable/Const_4Const0^log_loss/assert_broadcastable/AssertGuard/Merge*!
valueB Blog_loss/sub_2:0*
dtype0*
_output_shapes
: 
Р
Clog_loss/num_present/broadcast_weights/assert_broadcastable/Const_5Const0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Nlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchPlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergePlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Я
Plog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityPlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Э
Plog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityNlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ю
Olog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityPlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
й
Llog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOp0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Zlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityPlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tM^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*c
_classY
WUloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Т
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Љ
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
И
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*.
value%B# Blog_loss/num_present/Select:0*
dtype0*
_output_shapes
: 
Ј
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ћ
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *!
valueB Blog_loss/sub_2:0*
dtype0
Ѕ
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Const0^log_loss/assert_broadcastable/AssertGuard/MergeQ^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
щ
Nlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertUlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchUlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Ulog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeOlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*c
_classY
WUloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchIlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeOlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes

: : *
T0*\
_classR
PNloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape

Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeOlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*[
_classQ
OMloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/values/shape*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
і
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchElog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarOlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

\log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityPlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fO^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*c
_classY
WUloc:@log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
М
Mlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/MergeMerge\log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Zlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N

6log_loss/num_present/broadcast_weights/ones_like/ShapeShapelog_loss/sub_20^log_loss/assert_broadcastable/AssertGuard/MergeN^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
§
6log_loss/num_present/broadcast_weights/ones_like/ConstConst0^log_loss/assert_broadcastable/AssertGuard/MergeN^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
н
0log_loss/num_present/broadcast_weights/ones_likeFill6log_loss/num_present/broadcast_weights/ones_like/Shape6log_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*
_output_shapes
:

&log_loss/num_present/broadcast_weightsMullog_loss/num_present/Select0log_loss/num_present/broadcast_weights/ones_like*
_output_shapes
:*
T0
j
log_loss/num_present/RankRank&log_loss/num_present/broadcast_weights*
T0*
_output_shapes
: 

 log_loss/num_present/range/startConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
value	B : *
dtype0*
_output_shapes
: 

 log_loss/num_present/range/deltaConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 
Г
log_loss/num_present/rangeRange log_loss/num_present/range/startlog_loss/num_present/Rank log_loss/num_present/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0

log_loss/num_presentSum&log_loss/num_present/broadcast_weightslog_loss/num_present/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

log_loss/ConstConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
q
log_loss/Sum_1Sumlog_loss/Sumlog_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

log_loss/Greater/yConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 
f
log_loss/GreaterGreaterlog_loss/num_presentlog_loss/Greater/y*
T0*
_output_shapes
: 

log_loss/Equal/yConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 
`
log_loss/EqualEquallog_loss/num_presentlog_loss/Equal/y*
T0*
_output_shapes
: 

log_loss/ones_like/ShapeConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 

log_loss/ones_like/ConstConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 

log_loss/ones_likeFilllog_loss/ones_like/Shapelog_loss/ones_like/Const*

index_type0*
_output_shapes
: *
T0
t
log_loss/SelectSelectlog_loss/Equallog_loss/ones_likelog_loss/num_present*
T0*
_output_shapes
: 
Y
log_loss/divRealDivlog_loss/Sum_1log_loss/Select*
_output_shapes
: *
T0

log_loss/zeros_likeConst0^log_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 
n
log_loss/valueSelectlog_loss/Greaterlog_loss/divlog_loss/zeros_like*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
m
(gradients/log_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

$gradients/log_loss/value_grad/SelectSelectlog_loss/Greatergradients/Fill(gradients/log_loss/value_grad/zeros_like*
_output_shapes
: *
T0

&gradients/log_loss/value_grad/Select_1Selectlog_loss/Greater(gradients/log_loss/value_grad/zeros_likegradients/Fill*
_output_shapes
: *
T0

.gradients/log_loss/value_grad/tuple/group_depsNoOp%^gradients/log_loss/value_grad/Select'^gradients/log_loss/value_grad/Select_1
ѓ
6gradients/log_loss/value_grad/tuple/control_dependencyIdentity$gradients/log_loss/value_grad/Select/^gradients/log_loss/value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/log_loss/value_grad/Select*
_output_shapes
: 
љ
8gradients/log_loss/value_grad/tuple/control_dependency_1Identity&gradients/log_loss/value_grad/Select_1/^gradients/log_loss/value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/log_loss/value_grad/Select_1*
_output_shapes
: 
d
!gradients/log_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
f
#gradients/log_loss/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Я
1gradients/log_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/log_loss/div_grad/Shape#gradients/log_loss/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

#gradients/log_loss/div_grad/RealDivRealDiv6gradients/log_loss/value_grad/tuple/control_dependencylog_loss/Select*
T0*
_output_shapes
: 
О
gradients/log_loss/div_grad/SumSum#gradients/log_loss/div_grad/RealDiv1gradients/log_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ё
#gradients/log_loss/div_grad/ReshapeReshapegradients/log_loss/div_grad/Sum!gradients/log_loss/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0
W
gradients/log_loss/div_grad/NegNeglog_loss/Sum_1*
T0*
_output_shapes
: 

%gradients/log_loss/div_grad/RealDiv_1RealDivgradients/log_loss/div_grad/Neglog_loss/Select*
T0*
_output_shapes
: 

%gradients/log_loss/div_grad/RealDiv_2RealDiv%gradients/log_loss/div_grad/RealDiv_1log_loss/Select*
T0*
_output_shapes
: 
І
gradients/log_loss/div_grad/mulMul6gradients/log_loss/value_grad/tuple/control_dependency%gradients/log_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
О
!gradients/log_loss/div_grad/Sum_1Sumgradients/log_loss/div_grad/mul3gradients/log_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ї
%gradients/log_loss/div_grad/Reshape_1Reshape!gradients/log_loss/div_grad/Sum_1#gradients/log_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

,gradients/log_loss/div_grad/tuple/group_depsNoOp$^gradients/log_loss/div_grad/Reshape&^gradients/log_loss/div_grad/Reshape_1
э
4gradients/log_loss/div_grad/tuple/control_dependencyIdentity#gradients/log_loss/div_grad/Reshape-^gradients/log_loss/div_grad/tuple/group_deps*
_output_shapes
: *
T0*6
_class,
*(loc:@gradients/log_loss/div_grad/Reshape
ѓ
6gradients/log_loss/div_grad/tuple/control_dependency_1Identity%gradients/log_loss/div_grad/Reshape_1-^gradients/log_loss/div_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/div_grad/Reshape_1*
_output_shapes
: 
n
+gradients/log_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Т
%gradients/log_loss/Sum_1_grad/ReshapeReshape4gradients/log_loss/div_grad/tuple/control_dependency+gradients/log_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0
f
#gradients/log_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Љ
"gradients/log_loss/Sum_1_grad/TileTile%gradients/log_loss/Sum_1_grad/Reshape#gradients/log_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
x
!gradients/log_loss/Sum_grad/ShapeShapelog_loss/Mul_2*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
В
 gradients/log_loss/Sum_grad/SizeSize!gradients/log_loss/Sum_grad/Shape*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
out_type0*
_output_shapes
: 
М
gradients/log_loss/Sum_grad/addAddlog_loss/range gradients/log_loss/Sum_grad/Size*#
_output_shapes
:џџџџџџџџџ*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape
в
gradients/log_loss/Sum_grad/modFloorModgradients/log_loss/Sum_grad/add gradients/log_loss/Sum_grad/Size*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*#
_output_shapes
:џџџџџџџџџ
И
#gradients/log_loss/Sum_grad/Shape_1Shapegradients/log_loss/Sum_grad/mod*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
out_type0*
_output_shapes
:

'gradients/log_loss/Sum_grad/range/startConst*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 

'gradients/log_loss/Sum_grad/range/deltaConst*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 

!gradients/log_loss/Sum_grad/rangeRange'gradients/log_loss/Sum_grad/range/start gradients/log_loss/Sum_grad/Size'gradients/log_loss/Sum_grad/range/delta*

Tidx0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*#
_output_shapes
:џџџџџџџџџ

&gradients/log_loss/Sum_grad/Fill/valueConst*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ы
 gradients/log_loss/Sum_grad/FillFill#gradients/log_loss/Sum_grad/Shape_1&gradients/log_loss/Sum_grad/Fill/value*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0
А
)gradients/log_loss/Sum_grad/DynamicStitchDynamicStitch!gradients/log_loss/Sum_grad/rangegradients/log_loss/Sum_grad/mod!gradients/log_loss/Sum_grad/Shape gradients/log_loss/Sum_grad/Fill*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
N*#
_output_shapes
:џџџџџџџџџ*
T0

%gradients/log_loss/Sum_grad/Maximum/yConst*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ф
#gradients/log_loss/Sum_grad/MaximumMaximum)gradients/log_loss/Sum_grad/DynamicStitch%gradients/log_loss/Sum_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape
м
$gradients/log_loss/Sum_grad/floordivFloorDiv!gradients/log_loss/Sum_grad/Shape#gradients/log_loss/Sum_grad/Maximum*
T0*4
_class*
(&loc:@gradients/log_loss/Sum_grad/Shape*#
_output_shapes
:џџџџџџџџџ
Ў
#gradients/log_loss/Sum_grad/ReshapeReshape"gradients/log_loss/Sum_1_grad/Tile)gradients/log_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
Ј
 gradients/log_loss/Sum_grad/TileTile#gradients/log_loss/Sum_grad/Reshape$gradients/log_loss/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:
z
#gradients/log_loss/Mul_2_grad/ShapeShapelog_loss/sub_2*#
_output_shapes
:џџџџџџџџџ*
T0*
out_type0
h
%gradients/log_loss/Mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
е
3gradients/log_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/log_loss/Mul_2_grad/Shape%gradients/log_loss/Mul_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

!gradients/log_loss/Mul_2_grad/MulMul gradients/log_loss/Sum_grad/Tilelog_loss/ToFloat_3/x*
_output_shapes
:*
T0
Р
!gradients/log_loss/Mul_2_grad/SumSum!gradients/log_loss/Mul_2_grad/Mul3gradients/log_loss/Mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Љ
%gradients/log_loss/Mul_2_grad/ReshapeReshape!gradients/log_loss/Mul_2_grad/Sum#gradients/log_loss/Mul_2_grad/Shape*
_output_shapes
:*
T0*
Tshape0

#gradients/log_loss/Mul_2_grad/Mul_1Mullog_loss/sub_2 gradients/log_loss/Sum_grad/Tile*
_output_shapes
:*
T0
Ц
#gradients/log_loss/Mul_2_grad/Sum_1Sum#gradients/log_loss/Mul_2_grad/Mul_15gradients/log_loss/Mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
­
'gradients/log_loss/Mul_2_grad/Reshape_1Reshape#gradients/log_loss/Mul_2_grad/Sum_1%gradients/log_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

.gradients/log_loss/Mul_2_grad/tuple/group_depsNoOp&^gradients/log_loss/Mul_2_grad/Reshape(^gradients/log_loss/Mul_2_grad/Reshape_1
ї
6gradients/log_loss/Mul_2_grad/tuple/control_dependencyIdentity%gradients/log_loss/Mul_2_grad/Reshape/^gradients/log_loss/Mul_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/Mul_2_grad/Reshape*
_output_shapes
:
ћ
8gradients/log_loss/Mul_2_grad/tuple/control_dependency_1Identity'gradients/log_loss/Mul_2_grad/Reshape_1/^gradients/log_loss/Mul_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/log_loss/Mul_2_grad/Reshape_1*
_output_shapes
: 
x
#gradients/log_loss/sub_2_grad/ShapeShapelog_loss/Neg*#
_output_shapes
:џџџџџџџџџ*
T0*
out_type0
|
%gradients/log_loss/sub_2_grad/Shape_1Shapelog_loss/Mul_1*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
е
3gradients/log_loss/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/log_loss/sub_2_grad/Shape%gradients/log_loss/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
е
!gradients/log_loss/sub_2_grad/SumSum6gradients/log_loss/Mul_2_grad/tuple/control_dependency3gradients/log_loss/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Љ
%gradients/log_loss/sub_2_grad/ReshapeReshape!gradients/log_loss/sub_2_grad/Sum#gradients/log_loss/sub_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:
й
#gradients/log_loss/sub_2_grad/Sum_1Sum6gradients/log_loss/Mul_2_grad/tuple/control_dependency5gradients/log_loss/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
p
!gradients/log_loss/sub_2_grad/NegNeg#gradients/log_loss/sub_2_grad/Sum_1*
T0*
_output_shapes
:
­
'gradients/log_loss/sub_2_grad/Reshape_1Reshape!gradients/log_loss/sub_2_grad/Neg%gradients/log_loss/sub_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

.gradients/log_loss/sub_2_grad/tuple/group_depsNoOp&^gradients/log_loss/sub_2_grad/Reshape(^gradients/log_loss/sub_2_grad/Reshape_1
ї
6gradients/log_loss/sub_2_grad/tuple/control_dependencyIdentity%gradients/log_loss/sub_2_grad/Reshape/^gradients/log_loss/sub_2_grad/tuple/group_deps*
_output_shapes
:*
T0*8
_class.
,*loc:@gradients/log_loss/sub_2_grad/Reshape
§
8gradients/log_loss/sub_2_grad/tuple/control_dependency_1Identity'gradients/log_loss/sub_2_grad/Reshape_1/^gradients/log_loss/sub_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/log_loss/sub_2_grad/Reshape_1*
_output_shapes
:

gradients/log_loss/Neg_grad/NegNeg6gradients/log_loss/sub_2_grad/tuple/control_dependency*
T0*
_output_shapes
:
x
#gradients/log_loss/Mul_1_grad/ShapeShapelog_loss/sub*#
_output_shapes
:џџџџџџџџџ*
T0*
out_type0
s
%gradients/log_loss/Mul_1_grad/Shape_1Shapelog_loss/Log_1*
out_type0*
_output_shapes
:*
T0
е
3gradients/log_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/log_loss/Mul_1_grad/Shape%gradients/log_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

!gradients/log_loss/Mul_1_grad/MulMul8gradients/log_loss/sub_2_grad/tuple/control_dependency_1log_loss/Log_1*
T0*
_output_shapes
:
Р
!gradients/log_loss/Mul_1_grad/SumSum!gradients/log_loss/Mul_1_grad/Mul3gradients/log_loss/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Љ
%gradients/log_loss/Mul_1_grad/ReshapeReshape!gradients/log_loss/Mul_1_grad/Sum#gradients/log_loss/Mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:

#gradients/log_loss/Mul_1_grad/Mul_1Mullog_loss/sub8gradients/log_loss/sub_2_grad/tuple/control_dependency_1*
_output_shapes
:*
T0
Ц
#gradients/log_loss/Mul_1_grad/Sum_1Sum#gradients/log_loss/Mul_1_grad/Mul_15gradients/log_loss/Mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
О
'gradients/log_loss/Mul_1_grad/Reshape_1Reshape#gradients/log_loss/Mul_1_grad/Sum_1%gradients/log_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

.gradients/log_loss/Mul_1_grad/tuple/group_depsNoOp&^gradients/log_loss/Mul_1_grad/Reshape(^gradients/log_loss/Mul_1_grad/Reshape_1
ї
6gradients/log_loss/Mul_1_grad/tuple/control_dependencyIdentity%gradients/log_loss/Mul_1_grad/Reshape/^gradients/log_loss/Mul_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/Mul_1_grad/Reshape*
_output_shapes
:

8gradients/log_loss/Mul_1_grad/tuple/control_dependency_1Identity'gradients/log_loss/Mul_1_grad/Reshape_1/^gradients/log_loss/Mul_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/log_loss/Mul_1_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
q
!gradients/log_loss/Mul_grad/ShapeShapetargets*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
o
#gradients/log_loss/Mul_grad/Shape_1Shapelog_loss/Log*
_output_shapes
:*
T0*
out_type0
Я
1gradients/log_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/log_loss/Mul_grad/Shape#gradients/log_loss/Mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
x
gradients/log_loss/Mul_grad/MulMulgradients/log_loss/Neg_grad/Neglog_loss/Log*
_output_shapes
:*
T0
К
gradients/log_loss/Mul_grad/SumSumgradients/log_loss/Mul_grad/Mul1gradients/log_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ѓ
#gradients/log_loss/Mul_grad/ReshapeReshapegradients/log_loss/Mul_grad/Sum!gradients/log_loss/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
u
!gradients/log_loss/Mul_grad/Mul_1Multargetsgradients/log_loss/Neg_grad/Neg*
T0*
_output_shapes
:
Р
!gradients/log_loss/Mul_grad/Sum_1Sum!gradients/log_loss/Mul_grad/Mul_13gradients/log_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
И
%gradients/log_loss/Mul_grad/Reshape_1Reshape!gradients/log_loss/Mul_grad/Sum_1#gradients/log_loss/Mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

,gradients/log_loss/Mul_grad/tuple/group_depsNoOp$^gradients/log_loss/Mul_grad/Reshape&^gradients/log_loss/Mul_grad/Reshape_1
я
4gradients/log_loss/Mul_grad/tuple/control_dependencyIdentity#gradients/log_loss/Mul_grad/Reshape-^gradients/log_loss/Mul_grad/tuple/group_deps*6
_class,
*(loc:@gradients/log_loss/Mul_grad/Reshape*
_output_shapes
:*
T0

6gradients/log_loss/Mul_grad/tuple/control_dependency_1Identity%gradients/log_loss/Mul_grad/Reshape_1-^gradients/log_loss/Mul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/Mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
Г
(gradients/log_loss/Log_1_grad/Reciprocal
Reciprocallog_loss/add_19^gradients/log_loss/Mul_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ
О
!gradients/log_loss/Log_1_grad/mulMul8gradients/log_loss/Mul_1_grad/tuple/control_dependency_1(gradients/log_loss/Log_1_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0
­
&gradients/log_loss/Log_grad/Reciprocal
Reciprocallog_loss/add7^gradients/log_loss/Mul_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0
И
gradients/log_loss/Log_grad/mulMul6gradients/log_loss/Mul_grad/tuple/control_dependency_1&gradients/log_loss/Log_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0
q
#gradients/log_loss/add_1_grad/ShapeShapelog_loss/sub_1*
T0*
out_type0*
_output_shapes
:
h
%gradients/log_loss/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
е
3gradients/log_loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/log_loss/add_1_grad/Shape%gradients/log_loss/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Р
!gradients/log_loss/add_1_grad/SumSum!gradients/log_loss/Log_1_grad/mul3gradients/log_loss/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
И
%gradients/log_loss/add_1_grad/ReshapeReshape!gradients/log_loss/add_1_grad/Sum#gradients/log_loss/add_1_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
Ф
#gradients/log_loss/add_1_grad/Sum_1Sum!gradients/log_loss/Log_1_grad/mul5gradients/log_loss/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
­
'gradients/log_loss/add_1_grad/Reshape_1Reshape#gradients/log_loss/add_1_grad/Sum_1%gradients/log_loss/add_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0

.gradients/log_loss/add_1_grad/tuple/group_depsNoOp&^gradients/log_loss/add_1_grad/Reshape(^gradients/log_loss/add_1_grad/Reshape_1

6gradients/log_loss/add_1_grad/tuple/control_dependencyIdentity%gradients/log_loss/add_1_grad/Reshape/^gradients/log_loss/add_1_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*8
_class.
,*loc:@gradients/log_loss/add_1_grad/Reshape
ћ
8gradients/log_loss/add_1_grad/tuple/control_dependency_1Identity'gradients/log_loss/add_1_grad/Reshape_1/^gradients/log_loss/add_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/log_loss/add_1_grad/Reshape_1*
_output_shapes
: 
n
!gradients/log_loss/add_grad/ShapeShapey_hat/Sigmoid*
T0*
out_type0*
_output_shapes
:
f
#gradients/log_loss/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Я
1gradients/log_loss/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/log_loss/add_grad/Shape#gradients/log_loss/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
К
gradients/log_loss/add_grad/SumSumgradients/log_loss/Log_grad/mul1gradients/log_loss/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
В
#gradients/log_loss/add_grad/ReshapeReshapegradients/log_loss/add_grad/Sum!gradients/log_loss/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
О
!gradients/log_loss/add_grad/Sum_1Sumgradients/log_loss/Log_grad/mul3gradients/log_loss/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ї
%gradients/log_loss/add_grad/Reshape_1Reshape!gradients/log_loss/add_grad/Sum_1#gradients/log_loss/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

,gradients/log_loss/add_grad/tuple/group_depsNoOp$^gradients/log_loss/add_grad/Reshape&^gradients/log_loss/add_grad/Reshape_1
ў
4gradients/log_loss/add_grad/tuple/control_dependencyIdentity#gradients/log_loss/add_grad/Reshape-^gradients/log_loss/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/log_loss/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
ѓ
6gradients/log_loss/add_grad/tuple/control_dependency_1Identity%gradients/log_loss/add_grad/Reshape_1-^gradients/log_loss/add_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/add_grad/Reshape_1*
_output_shapes
: 
f
#gradients/log_loss/sub_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
r
%gradients/log_loss/sub_1_grad/Shape_1Shapey_hat/Sigmoid*
T0*
out_type0*
_output_shapes
:
е
3gradients/log_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/log_loss/sub_1_grad/Shape%gradients/log_loss/sub_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
е
!gradients/log_loss/sub_1_grad/SumSum6gradients/log_loss/add_1_grad/tuple/control_dependency3gradients/log_loss/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ї
%gradients/log_loss/sub_1_grad/ReshapeReshape!gradients/log_loss/sub_1_grad/Sum#gradients/log_loss/sub_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
й
#gradients/log_loss/sub_1_grad/Sum_1Sum6gradients/log_loss/add_1_grad/tuple/control_dependency5gradients/log_loss/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
p
!gradients/log_loss/sub_1_grad/NegNeg#gradients/log_loss/sub_1_grad/Sum_1*
T0*
_output_shapes
:
М
'gradients/log_loss/sub_1_grad/Reshape_1Reshape!gradients/log_loss/sub_1_grad/Neg%gradients/log_loss/sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

.gradients/log_loss/sub_1_grad/tuple/group_depsNoOp&^gradients/log_loss/sub_1_grad/Reshape(^gradients/log_loss/sub_1_grad/Reshape_1
ѕ
6gradients/log_loss/sub_1_grad/tuple/control_dependencyIdentity%gradients/log_loss/sub_1_grad/Reshape/^gradients/log_loss/sub_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/log_loss/sub_1_grad/Reshape*
_output_shapes
: 

8gradients/log_loss/sub_1_grad/tuple/control_dependency_1Identity'gradients/log_loss/sub_1_grad/Reshape_1/^gradients/log_loss/sub_1_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*:
_class0
.,loc:@gradients/log_loss/sub_1_grad/Reshape_1
љ
gradients/AddNAddN4gradients/log_loss/add_grad/tuple/control_dependency8gradients/log_loss/sub_1_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0*6
_class,
*(loc:@gradients/log_loss/add_grad/Reshape*
N

(gradients/y_hat/Sigmoid_grad/SigmoidGradSigmoidGrady_hat/Sigmoidgradients/AddN*
T0*'
_output_shapes
:џџџџџџџџџ

(gradients/y_hat/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/y_hat/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:

-gradients/y_hat/BiasAdd_grad/tuple/group_depsNoOp)^gradients/y_hat/BiasAdd_grad/BiasAddGrad)^gradients/y_hat/Sigmoid_grad/SigmoidGrad

5gradients/y_hat/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/y_hat/Sigmoid_grad/SigmoidGrad.^gradients/y_hat/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/y_hat/Sigmoid_grad/SigmoidGrad*'
_output_shapes
:џџџџџџџџџ
џ
7gradients/y_hat/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/y_hat/BiasAdd_grad/BiasAddGrad.^gradients/y_hat/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/y_hat/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ю
"gradients/y_hat/MatMul_grad/MatMulMatMul5gradients/y_hat/BiasAdd_grad/tuple/control_dependencyy_hat/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
Ш
$gradients/y_hat/MatMul_grad/MatMul_1MatMulinput_layer_2/Relu5gradients/y_hat/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(

,gradients/y_hat/MatMul_grad/tuple/group_depsNoOp#^gradients/y_hat/MatMul_grad/MatMul%^gradients/y_hat/MatMul_grad/MatMul_1
ќ
4gradients/y_hat/MatMul_grad/tuple/control_dependencyIdentity"gradients/y_hat/MatMul_grad/MatMul-^gradients/y_hat/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/y_hat/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
љ
6gradients/y_hat/MatMul_grad/tuple/control_dependency_1Identity$gradients/y_hat/MatMul_grad/MatMul_1-^gradients/y_hat/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/y_hat/MatMul_grad/MatMul_1*
_output_shapes

:
В
*gradients/input_layer_2/Relu_grad/ReluGradReluGrad4gradients/y_hat/MatMul_grad/tuple/control_dependencyinput_layer_2/Relu*'
_output_shapes
:џџџџџџџџџ*
T0
Ї
0gradients/input_layer_2/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/input_layer_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients/input_layer_2/BiasAdd_grad/tuple/group_depsNoOp1^gradients/input_layer_2/BiasAdd_grad/BiasAddGrad+^gradients/input_layer_2/Relu_grad/ReluGrad

=gradients/input_layer_2/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/input_layer_2/Relu_grad/ReluGrad6^gradients/input_layer_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*=
_class3
1/loc:@gradients/input_layer_2/Relu_grad/ReluGrad

?gradients/input_layer_2/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/input_layer_2/BiasAdd_grad/BiasAddGrad6^gradients/input_layer_2/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@gradients/input_layer_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
ц
*gradients/input_layer_2/MatMul_grad/MatMulMatMul=gradients/input_layer_2/BiasAdd_grad/tuple/control_dependencyinput_layer_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0
и
,gradients/input_layer_2/MatMul_grad/MatMul_1MatMulinput_layer_1/Relu=gradients/input_layer_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

4gradients/input_layer_2/MatMul_grad/tuple/group_depsNoOp+^gradients/input_layer_2/MatMul_grad/MatMul-^gradients/input_layer_2/MatMul_grad/MatMul_1

<gradients/input_layer_2/MatMul_grad/tuple/control_dependencyIdentity*gradients/input_layer_2/MatMul_grad/MatMul5^gradients/input_layer_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*=
_class3
1/loc:@gradients/input_layer_2/MatMul_grad/MatMul

>gradients/input_layer_2/MatMul_grad/tuple/control_dependency_1Identity,gradients/input_layer_2/MatMul_grad/MatMul_15^gradients/input_layer_2/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/input_layer_2/MatMul_grad/MatMul_1*
_output_shapes

:
К
*gradients/input_layer_1/Relu_grad/ReluGradReluGrad<gradients/input_layer_2/MatMul_grad/tuple/control_dependencyinput_layer_1/Relu*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
0gradients/input_layer_1/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/input_layer_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients/input_layer_1/BiasAdd_grad/tuple/group_depsNoOp1^gradients/input_layer_1/BiasAdd_grad/BiasAddGrad+^gradients/input_layer_1/Relu_grad/ReluGrad

=gradients/input_layer_1/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/input_layer_1/Relu_grad/ReluGrad6^gradients/input_layer_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*=
_class3
1/loc:@gradients/input_layer_1/Relu_grad/ReluGrad

?gradients/input_layer_1/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/input_layer_1/BiasAdd_grad/BiasAddGrad6^gradients/input_layer_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/input_layer_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ц
*gradients/input_layer_1/MatMul_grad/MatMulMatMul=gradients/input_layer_1/BiasAdd_grad/tuple/control_dependencyinput_layer_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
Ь
,gradients/input_layer_1/MatMul_grad/MatMul_1MatMulinputs=gradients/input_layer_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

4gradients/input_layer_1/MatMul_grad/tuple/group_depsNoOp+^gradients/input_layer_1/MatMul_grad/MatMul-^gradients/input_layer_1/MatMul_grad/MatMul_1

<gradients/input_layer_1/MatMul_grad/tuple/control_dependencyIdentity*gradients/input_layer_1/MatMul_grad/MatMul5^gradients/input_layer_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/input_layer_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ

>gradients/input_layer_1/MatMul_grad/tuple/control_dependency_1Identity,gradients/input_layer_1/MatMul_grad/MatMul_15^gradients/input_layer_1/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/input_layer_1/MatMul_grad/MatMul_1*
_output_shapes

:*
T0

beta1_power/initial_valueConst*%
_class
loc:@input_layer_1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
shared_name *%
_class
loc:@input_layer_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Е
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
: 
q
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*%
_class
loc:@input_layer_1/bias

beta2_power/initial_valueConst*%
_class
loc:@input_layer_1/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *%
_class
loc:@input_layer_1/bias*
	container *
shape: 
Е
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
q
beta2_power/readIdentitybeta2_power*
T0*%
_class
loc:@input_layer_1/bias*
_output_shapes
: 
Љ
+input_layer_1/kernel/Adam/Initializer/zerosConst*'
_class
loc:@input_layer_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
Ж
input_layer_1/kernel/Adam
VariableV2*
shared_name *'
_class
loc:@input_layer_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
э
 input_layer_1/kernel/Adam/AssignAssigninput_layer_1/kernel/Adam+input_layer_1/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel

input_layer_1/kernel/Adam/readIdentityinput_layer_1/kernel/Adam*
T0*'
_class
loc:@input_layer_1/kernel*
_output_shapes

:
Ћ
-input_layer_1/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

:*'
_class
loc:@input_layer_1/kernel*
valueB*    *
dtype0
И
input_layer_1/kernel/Adam_1
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@input_layer_1/kernel
ѓ
"input_layer_1/kernel/Adam_1/AssignAssigninput_layer_1/kernel/Adam_1-input_layer_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel*
validate_shape(*
_output_shapes

:

 input_layer_1/kernel/Adam_1/readIdentityinput_layer_1/kernel/Adam_1*
_output_shapes

:*
T0*'
_class
loc:@input_layer_1/kernel

)input_layer_1/bias/Adam/Initializer/zerosConst*%
_class
loc:@input_layer_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Њ
input_layer_1/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@input_layer_1/bias*
	container *
shape:
с
input_layer_1/bias/Adam/AssignAssigninput_layer_1/bias/Adam)input_layer_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
:

input_layer_1/bias/Adam/readIdentityinput_layer_1/bias/Adam*
T0*%
_class
loc:@input_layer_1/bias*
_output_shapes
:

+input_layer_1/bias/Adam_1/Initializer/zerosConst*%
_class
loc:@input_layer_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ќ
input_layer_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@input_layer_1/bias*
	container *
shape:
ч
 input_layer_1/bias/Adam_1/AssignAssigninput_layer_1/bias/Adam_1+input_layer_1/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(

input_layer_1/bias/Adam_1/readIdentityinput_layer_1/bias/Adam_1*%
_class
loc:@input_layer_1/bias*
_output_shapes
:*
T0
Љ
+input_layer_2/kernel/Adam/Initializer/zerosConst*'
_class
loc:@input_layer_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
Ж
input_layer_2/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@input_layer_2/kernel*
	container *
shape
:
э
 input_layer_2/kernel/Adam/AssignAssigninput_layer_2/kernel/Adam+input_layer_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@input_layer_2/kernel*
validate_shape(*
_output_shapes

:

input_layer_2/kernel/Adam/readIdentityinput_layer_2/kernel/Adam*
T0*'
_class
loc:@input_layer_2/kernel*
_output_shapes

:
Ћ
-input_layer_2/kernel/Adam_1/Initializer/zerosConst*'
_class
loc:@input_layer_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
И
input_layer_2/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@input_layer_2/kernel*
	container *
shape
:
ѓ
"input_layer_2/kernel/Adam_1/AssignAssigninput_layer_2/kernel/Adam_1-input_layer_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@input_layer_2/kernel

 input_layer_2/kernel/Adam_1/readIdentityinput_layer_2/kernel/Adam_1*
T0*'
_class
loc:@input_layer_2/kernel*
_output_shapes

:

)input_layer_2/bias/Adam/Initializer/zerosConst*%
_class
loc:@input_layer_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Њ
input_layer_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@input_layer_2/bias*
	container *
shape:
с
input_layer_2/bias/Adam/AssignAssigninput_layer_2/bias/Adam)input_layer_2/bias/Adam/Initializer/zeros*
T0*%
_class
loc:@input_layer_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(

input_layer_2/bias/Adam/readIdentityinput_layer_2/bias/Adam*
_output_shapes
:*
T0*%
_class
loc:@input_layer_2/bias

+input_layer_2/bias/Adam_1/Initializer/zerosConst*%
_class
loc:@input_layer_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ќ
input_layer_2/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@input_layer_2/bias*
	container 
ч
 input_layer_2/bias/Adam_1/AssignAssigninput_layer_2/bias/Adam_1+input_layer_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@input_layer_2/bias*
validate_shape(*
_output_shapes
:

input_layer_2/bias/Adam_1/readIdentityinput_layer_2/bias/Adam_1*
T0*%
_class
loc:@input_layer_2/bias*
_output_shapes
:

#y_hat/kernel/Adam/Initializer/zerosConst*
_class
loc:@y_hat/kernel*
valueB*    *
dtype0*
_output_shapes

:
І
y_hat/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@y_hat/kernel*
	container *
shape
:
Э
y_hat/kernel/Adam/AssignAssigny_hat/kernel/Adam#y_hat/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@y_hat/kernel*
validate_shape(*
_output_shapes

:

y_hat/kernel/Adam/readIdentityy_hat/kernel/Adam*
_output_shapes

:*
T0*
_class
loc:@y_hat/kernel

%y_hat/kernel/Adam_1/Initializer/zerosConst*
_class
loc:@y_hat/kernel*
valueB*    *
dtype0*
_output_shapes

:
Ј
y_hat/kernel/Adam_1
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@y_hat/kernel
г
y_hat/kernel/Adam_1/AssignAssigny_hat/kernel/Adam_1%y_hat/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@y_hat/kernel*
validate_shape(*
_output_shapes

:

y_hat/kernel/Adam_1/readIdentityy_hat/kernel/Adam_1*
T0*
_class
loc:@y_hat/kernel*
_output_shapes

:

!y_hat/bias/Adam/Initializer/zerosConst*
_class
loc:@y_hat/bias*
valueB*    *
dtype0*
_output_shapes
:

y_hat/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@y_hat/bias*
	container *
shape:
С
y_hat/bias/Adam/AssignAssigny_hat/bias/Adam!y_hat/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@y_hat/bias*
validate_shape(*
_output_shapes
:
u
y_hat/bias/Adam/readIdentityy_hat/bias/Adam*
T0*
_class
loc:@y_hat/bias*
_output_shapes
:

#y_hat/bias/Adam_1/Initializer/zerosConst*
_class
loc:@y_hat/bias*
valueB*    *
dtype0*
_output_shapes
:

y_hat/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@y_hat/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ч
y_hat/bias/Adam_1/AssignAssigny_hat/bias/Adam_1#y_hat/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@y_hat/bias*
validate_shape(*
_output_shapes
:
y
y_hat/bias/Adam_1/readIdentityy_hat/bias/Adam_1*
T0*
_class
loc:@y_hat/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 

*Adam/update_input_layer_1/kernel/ApplyAdam	ApplyAdaminput_layer_1/kernelinput_layer_1/kernel/Adaminput_layer_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon>gradients/input_layer_1/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*'
_class
loc:@input_layer_1/kernel*
use_nesterov( 

(Adam/update_input_layer_1/bias/ApplyAdam	ApplyAdaminput_layer_1/biasinput_layer_1/bias/Adaminput_layer_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/input_layer_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@input_layer_1/bias*
use_nesterov( *
_output_shapes
:

*Adam/update_input_layer_2/kernel/ApplyAdam	ApplyAdaminput_layer_2/kernelinput_layer_2/kernel/Adaminput_layer_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon>gradients/input_layer_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@input_layer_2/kernel*
use_nesterov( *
_output_shapes

:

(Adam/update_input_layer_2/bias/ApplyAdam	ApplyAdaminput_layer_2/biasinput_layer_2/bias/Adaminput_layer_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/input_layer_2/BiasAdd_grad/tuple/control_dependency_1*
T0*%
_class
loc:@input_layer_2/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
ь
"Adam/update_y_hat/kernel/ApplyAdam	ApplyAdamy_hat/kernely_hat/kernel/Adamy_hat/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/y_hat/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@y_hat/kernel*
use_nesterov( *
_output_shapes

:
п
 Adam/update_y_hat/bias/ApplyAdam	ApplyAdam
y_hat/biasy_hat/bias/Adamy_hat/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/y_hat/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@y_hat/bias*
use_nesterov( *
_output_shapes
:
э
Adam/mulMulbeta1_power/read
Adam/beta1)^Adam/update_input_layer_1/bias/ApplyAdam+^Adam/update_input_layer_1/kernel/ApplyAdam)^Adam/update_input_layer_2/bias/ApplyAdam+^Adam/update_input_layer_2/kernel/ApplyAdam!^Adam/update_y_hat/bias/ApplyAdam#^Adam/update_y_hat/kernel/ApplyAdam*
T0*%
_class
loc:@input_layer_1/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
я

Adam/mul_1Mulbeta2_power/read
Adam/beta2)^Adam/update_input_layer_1/bias/ApplyAdam+^Adam/update_input_layer_1/kernel/ApplyAdam)^Adam/update_input_layer_2/bias/ApplyAdam+^Adam/update_input_layer_2/kernel/ApplyAdam!^Adam/update_y_hat/bias/ApplyAdam#^Adam/update_y_hat/kernel/ApplyAdam*
T0*%
_class
loc:@input_layer_1/bias*
_output_shapes
: 
Ё
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*%
_class
loc:@input_layer_1/bias
Ђ
AdamNoOp^Adam/Assign^Adam/Assign_1)^Adam/update_input_layer_1/bias/ApplyAdam+^Adam/update_input_layer_1/kernel/ApplyAdam)^Adam/update_input_layer_2/bias/ApplyAdam+^Adam/update_input_layer_2/kernel/ApplyAdam!^Adam/update_y_hat/bias/ApplyAdam#^Adam/update_y_hat/kernel/ApplyAdam
и
initNoOp^beta1_power/Assign^beta2_power/Assign^input_layer_1/bias/Adam/Assign!^input_layer_1/bias/Adam_1/Assign^input_layer_1/bias/Assign!^input_layer_1/kernel/Adam/Assign#^input_layer_1/kernel/Adam_1/Assign^input_layer_1/kernel/Assign^input_layer_2/bias/Adam/Assign!^input_layer_2/bias/Adam_1/Assign^input_layer_2/bias/Assign!^input_layer_2/kernel/Adam/Assign#^input_layer_2/kernel/Adam_1/Assign^input_layer_2/kernel/Assign^y_hat/bias/Adam/Assign^y_hat/bias/Adam_1/Assign^y_hat/bias/Assign^y_hat/kernel/Adam/Assign^y_hat/kernel/Adam_1/Assign^y_hat/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_8cfb77bc784b4ed1bc935ad16bb3984d/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*С
valueЗBДBbeta1_powerBbeta2_powerBinput_layer_1/biasBinput_layer_1/bias/AdamBinput_layer_1/bias/Adam_1Binput_layer_1/kernelBinput_layer_1/kernel/AdamBinput_layer_1/kernel/Adam_1Binput_layer_2/biasBinput_layer_2/bias/AdamBinput_layer_2/bias/Adam_1Binput_layer_2/kernelBinput_layer_2/kernel/AdamBinput_layer_2/kernel/Adam_1B
y_hat/biasBy_hat/bias/AdamBy_hat/bias/Adam_1By_hat/kernelBy_hat/kernel/AdamBy_hat/kernel/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Т
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerinput_layer_1/biasinput_layer_1/bias/Adaminput_layer_1/bias/Adam_1input_layer_1/kernelinput_layer_1/kernel/Adaminput_layer_1/kernel/Adam_1input_layer_2/biasinput_layer_2/bias/Adaminput_layer_2/bias/Adam_1input_layer_2/kernelinput_layer_2/kernel/Adaminput_layer_2/kernel/Adam_1
y_hat/biasy_hat/bias/Adamy_hat/bias/Adam_1y_hat/kernely_hat/kernel/Adamy_hat/kernel/Adam_1"/device:CPU:0*"
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
 
save/RestoreV2/tensor_namesConst"/device:CPU:0*С
valueЗBДBbeta1_powerBbeta2_powerBinput_layer_1/biasBinput_layer_1/bias/AdamBinput_layer_1/bias/Adam_1Binput_layer_1/kernelBinput_layer_1/kernel/AdamBinput_layer_1/kernel/Adam_1Binput_layer_2/biasBinput_layer_2/bias/AdamBinput_layer_2/bias/Adam_1Binput_layer_2/kernelBinput_layer_2/kernel/AdamBinput_layer_2/kernel/Adam_1B
y_hat/biasBy_hat/bias/AdamBy_hat/bias/Adam_1By_hat/kernelBy_hat/kernel/AdamBy_hat/kernel/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ў
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
Ѓ
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
: 
Ї
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
: 
В
save/Assign_2Assigninput_layer_1/biassave/RestoreV2:2*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(
З
save/Assign_3Assigninput_layer_1/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias*
validate_shape(*
_output_shapes
:
Й
save/Assign_4Assigninput_layer_1/bias/Adam_1save/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@input_layer_1/bias
К
save/Assign_5Assigninput_layer_1/kernelsave/RestoreV2:5*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel*
validate_shape(*
_output_shapes

:
П
save/Assign_6Assigninput_layer_1/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel*
validate_shape(*
_output_shapes

:
С
save/Assign_7Assigninput_layer_1/kernel/Adam_1save/RestoreV2:7*
use_locking(*
T0*'
_class
loc:@input_layer_1/kernel*
validate_shape(*
_output_shapes

:
В
save/Assign_8Assigninput_layer_2/biassave/RestoreV2:8*%
_class
loc:@input_layer_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
З
save/Assign_9Assigninput_layer_2/bias/Adamsave/RestoreV2:9*
use_locking(*
T0*%
_class
loc:@input_layer_2/bias*
validate_shape(*
_output_shapes
:
Л
save/Assign_10Assigninput_layer_2/bias/Adam_1save/RestoreV2:10*
_output_shapes
:*
use_locking(*
T0*%
_class
loc:@input_layer_2/bias*
validate_shape(
М
save/Assign_11Assigninput_layer_2/kernelsave/RestoreV2:11*
use_locking(*
T0*'
_class
loc:@input_layer_2/kernel*
validate_shape(*
_output_shapes

:
С
save/Assign_12Assigninput_layer_2/kernel/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@input_layer_2/kernel
У
save/Assign_13Assigninput_layer_2/kernel/Adam_1save/RestoreV2:13*'
_class
loc:@input_layer_2/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
Є
save/Assign_14Assign
y_hat/biassave/RestoreV2:14*
_class
loc:@y_hat/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Љ
save/Assign_15Assigny_hat/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@y_hat/bias*
validate_shape(*
_output_shapes
:
Ћ
save/Assign_16Assigny_hat/bias/Adam_1save/RestoreV2:16*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@y_hat/bias*
validate_shape(
Ќ
save/Assign_17Assigny_hat/kernelsave/RestoreV2:17*
use_locking(*
T0*
_class
loc:@y_hat/kernel*
validate_shape(*
_output_shapes

:
Б
save/Assign_18Assigny_hat/kernel/Adamsave/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@y_hat/kernel
Г
save/Assign_19Assigny_hat/kernel/Adam_1save/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@y_hat/kernel
т
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
losses

log_loss/value:0"р
trainable_variablesШХ

input_layer_1/kernel:0input_layer_1/kernel/Assigninput_layer_1/kernel/read:021input_layer_1/kernel/Initializer/random_uniform:08
v
input_layer_1/bias:0input_layer_1/bias/Assigninput_layer_1/bias/read:02&input_layer_1/bias/Initializer/zeros:08

input_layer_2/kernel:0input_layer_2/kernel/Assigninput_layer_2/kernel/read:021input_layer_2/kernel/Initializer/random_uniform:08
v
input_layer_2/bias:0input_layer_2/bias/Assigninput_layer_2/bias/read:02&input_layer_2/bias/Initializer/zeros:08
g
y_hat/kernel:0y_hat/kernel/Assigny_hat/kernel/read:02)y_hat/kernel/Initializer/random_uniform:08
V
y_hat/bias:0y_hat/bias/Assigny_hat/bias/read:02y_hat/bias/Initializer/zeros:08"
train_op

Adam"љв
cond_contextчвув

6log_loss/assert_broadcastable/is_valid_shape/cond_text6log_loss/assert_broadcastable/is_valid_shape/pred_id:07log_loss/assert_broadcastable/is_valid_shape/switch_t:0 *ц
)log_loss/assert_broadcastable/is_scalar:0
7log_loss/assert_broadcastable/is_valid_shape/Switch_1:0
7log_loss/assert_broadcastable/is_valid_shape/Switch_1:1
6log_loss/assert_broadcastable/is_valid_shape/pred_id:0
7log_loss/assert_broadcastable/is_valid_shape/switch_t:0d
)log_loss/assert_broadcastable/is_scalar:07log_loss/assert_broadcastable/is_valid_shape/Switch_1:1p
6log_loss/assert_broadcastable/is_valid_shape/pred_id:06log_loss/assert_broadcastable/is_valid_shape/pred_id:0
ЈB
8log_loss/assert_broadcastable/is_valid_shape/cond_text_16log_loss/assert_broadcastable/is_valid_shape/pred_id:07log_loss/assert_broadcastable/is_valid_shape/switch_f:0*ђ
Nlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
Nlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
Olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
Olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
hlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
dlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
jlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
flog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
elog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
`log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
jlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
ilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
ilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
clog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
[log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Ylog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
\log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
Ulog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
6log_loss/assert_broadcastable/is_valid_shape/pred_id:0
7log_loss/assert_broadcastable/is_valid_shape/switch_f:0
+log_loss/assert_broadcastable/values/rank:0
,log_loss/assert_broadcastable/values/shape:0
,log_loss/assert_broadcastable/weights/rank:0
-log_loss/assert_broadcastable/weights/shape:0p
6log_loss/assert_broadcastable/is_valid_shape/pred_id:06log_loss/assert_broadcastable/is_valid_shape/pred_id:0
-log_loss/assert_broadcastable/weights/shape:0mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
+log_loss/assert_broadcastable/values/rank:0\log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
,log_loss/assert_broadcastable/values/shape:0klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
,log_loss/assert_broadcastable/weights/rank:0^log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02

Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textPlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
hlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
dlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
jlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
flog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
elog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
`log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
jlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
ilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
ilog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
clog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
[log_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Ylog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
,log_loss/assert_broadcastable/values/shape:0
-log_loss/assert_broadcastable/weights/shape:0 
-log_loss/assert_broadcastable/weights/shape:0olog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1о
mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
,log_loss/assert_broadcastable/values/shape:0mlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1к
klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0klog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Є
Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02ѕ
ђ
Rlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*і
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Ulog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Є
Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Plog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Њ
Ulog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0Qlog_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
М
3log_loss/assert_broadcastable/AssertGuard/cond_text3log_loss/assert_broadcastable/AssertGuard/pred_id:04log_loss/assert_broadcastable/AssertGuard/switch_t:0 *
>log_loss/assert_broadcastable/AssertGuard/control_dependency:0
3log_loss/assert_broadcastable/AssertGuard/pred_id:0
4log_loss/assert_broadcastable/AssertGuard/switch_t:0j
3log_loss/assert_broadcastable/AssertGuard/pred_id:03log_loss/assert_broadcastable/AssertGuard/pred_id:0

5log_loss/assert_broadcastable/AssertGuard/cond_text_13log_loss/assert_broadcastable/AssertGuard/pred_id:04log_loss/assert_broadcastable/AssertGuard/switch_f:0*у
9log_loss/assert_broadcastable/AssertGuard/Assert/Switch:0
;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0
;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0
;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_0:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_1:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_2:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_4:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_5:0
9log_loss/assert_broadcastable/AssertGuard/Assert/data_7:0
@log_loss/assert_broadcastable/AssertGuard/control_dependency_1:0
3log_loss/assert_broadcastable/AssertGuard/pred_id:0
4log_loss/assert_broadcastable/AssertGuard/switch_f:0
)log_loss/assert_broadcastable/is_scalar:0
4log_loss/assert_broadcastable/is_valid_shape/Merge:0
,log_loss/assert_broadcastable/values/shape:0
-log_loss/assert_broadcastable/weights/shape:0l
-log_loss/assert_broadcastable/weights/shape:0;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0j
3log_loss/assert_broadcastable/AssertGuard/pred_id:03log_loss/assert_broadcastable/AssertGuard/pred_id:0k
,log_loss/assert_broadcastable/values/shape:0;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0h
)log_loss/assert_broadcastable/is_scalar:0;log_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0q
4log_loss/assert_broadcastable/is_valid_shape/Merge:09log_loss/assert_broadcastable/AssertGuard/Assert/Switch:0
ў
Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textTlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *і
Glog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 
Glog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ќ
Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Y
Vlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Щ(
llog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
llog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ylog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ulog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Ilog_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0л
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ч
Ilog_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0zlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ќ
Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0и
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ъ
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0|log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02л#
и#
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *!
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ylog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0н
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0р
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0к
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0log_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12н

к

plog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0ц
slog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0olog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0р
nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
­
Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_textQlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *Ў
\log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0І
Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0

Slog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
^log_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Glog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
Rlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Є
Glog_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0Ї
Jlog_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0­
Rlog_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Wlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0Ј
Klog_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Ylog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0І
Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qlog_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0"т
	variablesдб

input_layer_1/kernel:0input_layer_1/kernel/Assigninput_layer_1/kernel/read:021input_layer_1/kernel/Initializer/random_uniform:08
v
input_layer_1/bias:0input_layer_1/bias/Assigninput_layer_1/bias/read:02&input_layer_1/bias/Initializer/zeros:08

input_layer_2/kernel:0input_layer_2/kernel/Assigninput_layer_2/kernel/read:021input_layer_2/kernel/Initializer/random_uniform:08
v
input_layer_2/bias:0input_layer_2/bias/Assigninput_layer_2/bias/read:02&input_layer_2/bias/Initializer/zeros:08
g
y_hat/kernel:0y_hat/kernel/Assigny_hat/kernel/read:02)y_hat/kernel/Initializer/random_uniform:08
V
y_hat/bias:0y_hat/bias/Assigny_hat/bias/read:02y_hat/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

input_layer_1/kernel/Adam:0 input_layer_1/kernel/Adam/Assign input_layer_1/kernel/Adam/read:02-input_layer_1/kernel/Adam/Initializer/zeros:0

input_layer_1/kernel/Adam_1:0"input_layer_1/kernel/Adam_1/Assign"input_layer_1/kernel/Adam_1/read:02/input_layer_1/kernel/Adam_1/Initializer/zeros:0

input_layer_1/bias/Adam:0input_layer_1/bias/Adam/Assigninput_layer_1/bias/Adam/read:02+input_layer_1/bias/Adam/Initializer/zeros:0

input_layer_1/bias/Adam_1:0 input_layer_1/bias/Adam_1/Assign input_layer_1/bias/Adam_1/read:02-input_layer_1/bias/Adam_1/Initializer/zeros:0

input_layer_2/kernel/Adam:0 input_layer_2/kernel/Adam/Assign input_layer_2/kernel/Adam/read:02-input_layer_2/kernel/Adam/Initializer/zeros:0

input_layer_2/kernel/Adam_1:0"input_layer_2/kernel/Adam_1/Assign"input_layer_2/kernel/Adam_1/read:02/input_layer_2/kernel/Adam_1/Initializer/zeros:0

input_layer_2/bias/Adam:0input_layer_2/bias/Adam/Assigninput_layer_2/bias/Adam/read:02+input_layer_2/bias/Adam/Initializer/zeros:0

input_layer_2/bias/Adam_1:0 input_layer_2/bias/Adam_1/Assign input_layer_2/bias/Adam_1/read:02-input_layer_2/bias/Adam_1/Initializer/zeros:0
p
y_hat/kernel/Adam:0y_hat/kernel/Adam/Assigny_hat/kernel/Adam/read:02%y_hat/kernel/Adam/Initializer/zeros:0
x
y_hat/kernel/Adam_1:0y_hat/kernel/Adam_1/Assigny_hat/kernel/Adam_1/read:02'y_hat/kernel/Adam_1/Initializer/zeros:0
h
y_hat/bias/Adam:0y_hat/bias/Adam/Assigny_hat/bias/Adam/read:02#y_hat/bias/Adam/Initializer/zeros:0
p
y_hat/bias/Adam_1:0y_hat/bias/Adam_1/Assigny_hat/bias/Adam_1/read:02%y_hat/bias/Adam_1/Initializer/zeros:0*
serving_default}
)
inputs
inputs:0џџџџџџџџџ3
outputs(
classifications:0џџџџџџџџџtensorflow/serving/classify