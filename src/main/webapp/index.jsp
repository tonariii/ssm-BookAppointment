<%@page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 模态框（Modal）插件</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	 function bookappointment(){
		 
  		var  IdAndPasswordModal=$('#varifyModal');
		IdAndPasswordModal.modal('show');
	 }
	 
	 function aaa(){
		 debugger;
		 $.cookie('studentId', null);
		 $.cookie('password', null);
	 
		 studentId=$('#studentIdKey').val();
		 password=$('#passwordKey').val();
		 
		 $.cookie.raw =true;
		 $.cookie('studentId', studentId); 
		 $.cookie('password', password); 
	 }
	 function book(){
		 debugger;
		 alert($.cookie('studentId')); 
		 alert($.cookie('password')); 
	 }
	 </script>
</head>
<body>
<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" id="button1" onclick="bookappointment()">
	开始演示模态框
</button>
<button class="btn btn-primary btn-lg"   id="button3" onclick="book()">
	test
</button>

<div id="varifyModal" class="modal fade" aria-hidden="true"> 
    <div class="modal-dialog"> 
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-studentId"> </span>请输入学号和密码:
                </h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="studentId" id="studentIdKey"
                               placeholder="填写学号^o^" class="form-control">
                    </div>
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="password" name="password" id="passwordKey"
                               placeholder="输入密码^o^" class="form-control">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
               		<!--  验证信息 -->
                <span id="studentMessage" class="glyphicon"> </span>
                <button type="button" id="studentBtn" class="btn btn-success" onclick="aaa()">
                    <span class="glyphicon glyphicon-student"></span>
                    Submit
                </button>
            </div>
        </div>
    </div> 
</div>
</body>

</html>