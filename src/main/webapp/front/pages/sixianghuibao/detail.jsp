<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <link rel="stylesheet" href="../../xznstatic/css/bootstrap.min.css" />
    <!-- 样式 -->
    <link rel="stylesheet" href="../../css/style.css"/>
    <!-- 主题（主要颜色设置） -->
    <link rel="stylesheet" href="../../css/theme.css"/>
    <!-- 通用的css -->
    <link rel="stylesheet" href="../../css/common.css"/>
</head>
<style>
    /*padding-bottom 属性设置元素的下内边距（底部空白）*/
    .pb-120 {
        padding-bottom: 50px;
    }
    /*padding-top 属性设置元素的上内边距（头部空白）*/
    .pt-120 {
        padding-top: 20px;
    }

    .cmn-accordion .card-header .acc-btn .plus-icon::after {
        position: absolute;
        content: '';
        top: 50%;
        left: 50%;
        height: 25px;
        width: 1px;
        background-color: #bec452;
        -webkit-transform: translate(-50%, -50%) rotate(90deg);
        -ms-transform: translate(-50%, -50%) rotate(90deg);
        transform: translate(-50%, -50%) rotate(90deg);
        -webkit-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
    }

    .cmn-accordion .card-body {
        padding: 0;
    }

    blockquote {
        padding: 0 50px;
    }

    @media (max-width: 767px) {
        blockquote {
            padding: 0 30px;
        }
    }

    blockquote p {
        font-size: 24px;
        font-style: italic;
        text-align: center;
        font-family: "Playfair Display", serif;
    }

    @media (max-width: 767px) {
        blockquote p {
            font-size: 20px;
        }
    }


    /* 评论样式 和文本框样式 */
    body {
        font-family: "Raleway", sans-serif;
        font-size: 16px;
        padding: 0;
        margin: 0;
        font-weight: 400;
        position: relative;
        overflow-x: hidden;
    }

    img {
        max-width: 100%;
        height: auto;
    }

    ul, ol {
        padding: 0;
        margin: 0;
        list-style: none;
    }

    button {
        border: none;
    }

    input, textarea {
        padding: 10px 20px;
        border: 1px solid #e5e5e5;
        width: 100%;
        background-color: #ffffff;
    }


    textarea {
        min-height: 150px;
        resize: none;
    }

    /* 标题下面的蓝色字体 删除就会换行 */

    .post-meta {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin: 0 -8px;
        margin-top: 5px;
    }

    .post-meta li {
        margin: 3px 8px;
    }

    .post-meta li a {
        font-size: 12px;
    }


    .blog-single-classic .content {
        margin-top: 25px;
    }



    /* 博客详情部分 css start */
    .blog-details-wrapper .blog-details-header {
        margin-top: 25px;
        padding-bottom: 15px;
        border-bottom: 1px solid #e5e5e5;
    }



    .comments-area {
        margin-top: 50px;
    }

    .comments-area .title {
        text-transform: capitalize;
        margin-bottom: 30px;
    }

    .comments-list .single-comment {
        display: flex;
        flex-wrap: wrap;
        padding: 30px 0;
        border-bottom: 1px solid #e5e5e5;
    }

    .comments-list .single-comment:first-child {
        padding-top: 0;
    }

    .comments-list .single-comment:last-child {
        padding-bottom: 0;
        border-bottom: none;
    }

    .comments-list .single-comment .thumb {
        flex: 0 0 80px;
        -ms-flex: 0 0 80px;
        max-width: 80px;
        height: 80px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        -ms-border-radius: 50%;
        -o-border-radius: 50%;
        overflow: hidden;
    }

    .comments-list .single-comment .content {
        flex: 0 0 calc(100% - 80px);
        -ms-flex: 0 0 calc(100% - 80px);
        max-width: calc(100% - 80px);
        padding-left: 20px;
    }



    .comments-list .single-comment .content .date {
        font-size: 14px;
    }

    .comments-list .single-comment .content p {
        margin-top: 5px;
    }

    .comments-list .single-comment .content .comment-action {
        margin-top: 3px;
    }

    .comment-form-area {
        margin-top: 50px;
    }

    .comment-form-area .title {
        margin-bottom: 30px;
    }

    .comment-form-area .comment-form .form-group {
        margin-bottom: 30px;
    }

    .sidebar .widget + .widget {
        margin-top: 50px;
    }


    .sidebar .widget-title {
        font-size: 24px;
        text-transform: capitalize;
        margin-bottom: 30px;
        position: relative;
        padding-left: 15px;
    }

    .sidebar .widget-title::before {
        position: absolute;
        content: '';
        top: 4px;
        left: 0;
        width: 5px;
        height: 23px;
        background-color: var(--publicMainColor,orange);
    }

    .sidebar .category-list li {
        padding: 10px 0;
        border-bottom: 1px solid #e5e5e5;
    }

    /*位置为 Latest Blog Post 意思 最新博客 样式*/
    .small-post-list .small-post-single:first-child {
        padding-top: 0;
    }
    .small-post-list .small-post-single {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        padding: 20px 0;
        border-bottom: 1px solid #e5e5e5;
    }

    .small-post-list .small-post-single .content {
        width: calc(100% - 65px);
        padding-left: 15px;
    }



    /* 侧边栏 css end */

    .cmn-btn-border {
        padding: 13px 35px;
        font-size: 18px;
        text-transform: capitalize;
        color: #ffffff;
        background-color: var(--publicMainColor,orange);
        position: relative;
        z-index: 1;
        -webkit-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
        border-radius: 3px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        -ms-border-radius: 3px;
        -o-border-radius: 3px;
    }

    .cmn-btn-border:hover {
        color: #ffffff;
        box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.15);
    }

    .cmn-btn-border:hover::before {
        top: 0;
        left: 0;
    }

    .cmn-btn-border::before {
        position: absolute;
        content: '';
        top: -5px;
        left: -5px;
        width: 100%;
        height: 100%;
        background-color: var(--publicMainColor,orange);
        z-index: -10;
        border: 2px solid #ffffff;
        -webkit-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
    }

    .cmn-btn-border::after {
        position: absolute;
        content: '';
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: var(--publicMainColor,orange);
        z-index: -10;
        border: 2px solid #ffffff;
    }

    .blog-details-wrapper .blog-details-footer {
        padding: 20px 20px;
        border: 1px solid #f2f2f2;
        margin-top: 40px;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        justify-content: space-between;
    }</style>
<body>

    <div id="app">
        <section class="blog-details-section pt-120 pb-120">
            <div class="data-detail-breadcrumb" style="width: 1110px; padding: 0px 10px; box-shadow: rgba(255, 0, 0, 0.3) 0px 0px 0px; margin: 20px auto; border-color: rgb(135, 206, 250); border-radius: 4px; border-width: 0px; border-style: solid; height: 54px;">
                <span class="layui-breadcrumb">
                    <a href="../home/home.jsp">首页</a>
                    <a><cite>{{detail.sixianghuibaoName}}</cite></a>
                </span>

            </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog-details-wrapper">
                    <div><img :src="detail.sixianghuibaoPhoto" alt="image" style="width: 80%;height: auto" ></div>
                    <div class="blog-details-header">
                        <h3 class="blog-details-title">{{title}}</h3>
                        <ul class="post-meta">
                            <li v-if="detail.sixianghuibaoTypes">汇报类型：
                                {{detail.sixianghuibaoValue}}
                            </li>
                            <li v-if="detail.sixianghuibaoClicknum">热度：
                                {{detail.sixianghuibaoClicknum}}
                            </li>
                        </ul>


                        <ul class="post-meta">
                            <li>
                            </li>
                        </ul>

                        <!--<div style="padding: 20px;border: 0px solid #f2f2f2;margin-top: 20px;display: flex">
                            <div class="num-picker">
                                <button @click="sixianghuibaoYuyue()" style="height:auto;" :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.3)","margin":"0 5px","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(23, 124, 176, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"6px","borderWidth":"0","width":"auto","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' type="button" class="layui-btn btn-submit">
                                    立即预约
                                </button>
                            </div>
                        </div>-->
                    </div>
                    <div class="blog-details-content"v-html="myFilters(detail.sixianghuibaoContent)">
                    </div>
                    
                </div>
                <div class="comments-area" v-if="sixianghuibaoLiuyanDataList.length > 0">
                    <h3 class="title">
                        留言
                    </h3>
                    <ul class="comments-list">
                        <li class="single-comment" v-for="(item,index) in sixianghuibaoLiuyanDataList" v-bind:key="index">
                            <div class="thumb">
                                <img :src="item.yonghuPhoto" alt="image">
                            </div>
                            <div class="content">
                                <h6 class="name">{{item.yonghuName}}<span class="date" style="float:right">{{item.insertTime}}</span></h6>
                                <p>{{item.sixianghuibaoLiuyanText}}</p>
                            </div>
                            <p v-if="item.replyText != null && item.replyText != ''" style="font-size: 10px;color: #959797">
                                回复：{{ item.replyText }}</p>
                        </li>

                    </ul>
                </div>
                <div class="comment-form-area">
                    <h3 class="title">添加留言</h3>
                    <form class="comment-form">
                        <div class="row">
                            <div class="col-lg-12 form-group">
                                <textarea name="comment-message" id="sixianghuibaoLiuyanText" placeholder="留言内容"></textarea>
                            </div>
                            <div class="col-lg-12">
                                <button lay-submit lay-filter="sixianghuibaoLiuyanText" class="cmn-btn-border">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
        </div>
        <div class="col-lg-4" v-if="sixianghuibaoRecommendList">
            <div class="sidebar">

                <div class="widget">
                    <h3 class="widget-title">系统推荐</h3>

                    <ul class="small-post-list">
                        <li class="small-post-single" v-for="(item,index) in sixianghuibaoRecommendList" v-bind:key="index" @click="jump('../sixianghuibao/detail.jsp?id='+item.id)">
                            <div class="thumb"><img width="65px" :src="item.sixianghuibaoPhoto"  alt="image"></div>
                            <div class="content">
                                <a class="main_color" class="date">{{item.sixianghuibaoName}}</a>
                                <h6 v-if="item.sixianghuibaoNewMoney" class="post-title"><a style="color: red">{{item.sixianghuibaoNewMoney}}</a>RMB</h6>
                            </div>
                        </li>
                    </ul>
                </div>

            </div><!-- sidebar end -->
        </div>
    </div>
</section>    </div>

<script type="text/javascript" src="../../xznstatic/js/jquery.min.js"></script>
<script src="../../xznstatic/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../layui/layui.js"></script>
<script src="../../js/vue.js"></script>
<!-- 组件配置信息 -->
<script src="../../js/config.js"></script>
<!-- 扩展插件配置信息 -->
<script src="../../modules/config.js"></script>
<!-- 工具方法 -->
<script src="../../js/utils.js"></script>

<script>
    Vue.prototype.myFilters= function (msg) {
        if(msg != null){
            return msg.replace(/\n/g, "<br>");
        }else{
            return "";
        }
    };
    var vue = new Vue({
        el: '#app',
        data: {
            // 轮播图
            swiperList: [],
            // 数据详情
            detail: {
                id: 0
            },
            // 商品标题
            title: '',

            storeupFlag: 0,//收藏 [0为收藏 1已收藏]
            //系统推荐
            sixianghuibaoRecommendList: [],
            dataList: [],
            // 当前详情页表
            detailTable: 'sixianghuibao',
            // 留言列表
            sixianghuibaoLiuyanDataList: [],
        },
        //  清除定时器
        destroyed: function () {
            // 不知道具体作用
            // window.clearInterval(this.inter);
        },
        methods: {
            jump(url) {
                jump(url)
            }
            //预约
            ,sixianghuibaoYuyue(){
                let _this = this;
                // localStorage.setItem('sixianghuibaoId', _this.detail.id);
                // _this.jump("../sixianghuibaoOrder/add.jsp");

                let data={
                    sixianghuibaoId:_this.detail.id,
                    yonghuId:localStorage.getItem("userid"),
                    sixianghuibaoOrderYesnoTypes:1,
                }
                // 提交数据
                layui.http.requestJson('sixianghuibaoOrder/add', 'post', data, function (res) {
                    if(res.code == 0) {
                        layui.layer.msg('预约成功', {
                            time: 2000,
                            icon: 6
                        }, function () {
                            _this.jump("../sixianghuibaoOrder/list.jsp");
                        });
                    }else{
                        layui.layer.msg(res.msg, {
                            time: 5000,
                            icon: 5
                        });
                    }
                });
            },
        }
    });

    layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage', 'rate'], function () {
        var layer = layui.layer;
        var element = layui.element;
        var form = layui.form;
        var carousel = layui.carousel;
        var http = layui.http;
        var jquery = layui.jquery;
        var laypage = layui.laypage;
        var rate = layui.rate;//评分

        var limit = 10;

        // 设置数量
        jquery('#buyNumber').val(vue.buyNumber);

        // 数据ID
        var id = http.getParam('id');
        vue.detail.id = id;
        // 当前详情
        http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function (res) {
            // 详情信息
            vue.detail = res.data;
            vue.title = vue.detail.sixianghuibaoName;
           // 轮播图片
            vue.swiperList = vue.detail.sixianghuibaoPhoto ? vue.detail.sixianghuibaoPhoto.split(",") : [];
            var swiperItemHtml = '';
            for (let item of vue.swiperList) {
                swiperItemHtml +=
                        '<div>' +
                        '<img class="swiper-item" src="' + item + '" style="margin-top: 50px;" >' +
                        '</div>';
            }
            jquery('#swiper-item').html(swiperItemHtml);
            // 轮播图
            carousel.render({
                elem: '#swiper',
                width: swiper.width, height: swiper.height,
                arrow: swiper.arrow,
                anim: swiper.anim,
                interval: swiper.interval,
                indicator: swiper.indicator
            });
        });

        // 系统推荐
        http.request(`sixianghuibao/list`, 'get', {
            page: 1,
            limit: 5,
            sixianghuibaoTypes: vue.detail.sixianghuibaoTypes,
            sixianghuibaoDelete: 1,





        }, function (res) {
            vue.sixianghuibaoRecommendList = res.data.list;
        });

        // 获取留言
        http.request(`${vue.detailTable}Liuyan/list`, 'get', {
            page: 1,
            limit: limit,
            sixianghuibaoId: vue.detail.id
        }, function (res) {
            vue.sixianghuibaoLiuyanDataList = res.data.list;
            // 分页
            laypage.render({
                elem: 'sixianghuibaoLiuyanPager',
                count: res.data.total,
                limit: limit,
                jump: function (obj, first) {
                    //首次不执行
                    if (!first) {
                        http.request(`${vue.detailTable}Liuyan/list`, 'get', {
                            page: obj.curr,
                            limit: obj.limit,
                            sixianghuibaoId: vue.detail.id
                        }, function (res) {
                            vue.sixianghuibaoLiuyanDataList = res.data.list
                        })
                    }
                }
            });
        });

        // 提交留言
        form.on('submit(sixianghuibaoLiuyanText)', function (data) {
            data.yonghuId = localStorage.getItem('userid');
            data.tableName = localStorage.getItem('userTable');
            data.sixianghuibaoLiuyanText =jquery("#sixianghuibaoLiuyanText").val();
            if(data.sixianghuibaoLiuyanText == null || data.sixianghuibaoLiuyanText == ''){
                layer.msg("留言不能为空", {
                    time: 2000,
                    icon: 2
                });
                return false;
            }
            data.sixianghuibaoId = vue.detail.id;
            http.requestJson(`${vue.detailTable}Liuyan/add`, 'post', data, function (res) {
                layer.msg('留言成功', {
                    time: 2000,
                    icon: 6
                }, function () {
                    window.location.reload();
                });
                return false
            });
            return false
        });



    });





</script>
</body>
</html>
