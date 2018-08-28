//
//  ViewController.m
//  ImageAnimationTest
//
//  Created by linjianguo on 2018/8/28.
//  Copyright © 2018年 com.justsee. All rights reserved.
//

#import "ViewController.h"

#define ZYFWidth [UIScreen mainScreen].bounds.size.width
#define ZYFHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self demo1];
    //[self demo2];
//    [self demo3];
    [self demo4];
}
- (void)demo4
{
    //创建一个可拉伸的动态图。
    //name 是部分或完整的文件路径，不带后缀名(The full or partial path to the file (sans suffix))。可以是中文。
    //cap​Insets 是保护图片某些部位不被拉伸的矩形帽子。
    //duration 是动画播放周期。
    //函数会加载一系列 name + 数字 组成名字的图片，比如 name 是 “image”，会加载 image0，image1，……，一直到 image1024。如果缺少 image5，那么 image6之后的图片都不会加载
    //数字从 0 或者 1 开始，但是要连续。加载图片的 scale 和 size 属性要相等
    //只有拉伸模式要使用 UIImageResizingModeStretch 时，才调用该函数，否则调用上面的函数 animated​Resizable​Image​Named:​cap​Insets:​duration:
    UIImageView *iv  =[[UIImageView alloc] initWithFrame:CGRectMake(ZYFWidth / 2 - 50, ZYFHeight / 2 - 50, 100, 100)];
    iv.backgroundColor = [UIColor redColor];
    iv.image = [UIImage animatedResizableImageNamed:@"icon_pull_animation_" capInsets:UIEdgeInsetsZero resizingMode:(UIImageResizingModeStretch)  duration:2.0];
    //[iv sizeToFit];
    iv.center = self.view.center;
    [self.view addSubview:iv];
    //UIEdgeInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
}
- (void)demo3
{
    //创建一个可拉伸的动态图。
    //name 是部分或完整的文件路径，不带后缀名(The full or partial path to the file (sans suffix))。可以是中文。
    //cap​Insets 是保护图片某些部位不被拉伸的矩形帽子。
    //duration 是动画播放周期。
    //函数会加载一系列 name + 数字 组成名字的图片，比如 name 是 “image”，会加载 image0，image1，……，一直到 image1024。如果缺少 image5，那么 image6之后的图片都不会加载
    //数字从 0 或者 1 开始，但是要连续。加载图片的 scale 和 size 属性要相等
    //拉伸模式默认是平铺(UIImageResizingModeTile)。详细介绍看文末的 UIImageResizingMode 部分
    UIImageView *iv  =[[UIImageView alloc] initWithFrame:CGRectMake(ZYFWidth / 2 - 50, ZYFHeight / 2 - 50, 100, 100)];
    iv.backgroundColor = [UIColor redColor];
    iv.image = [UIImage animatedResizableImageNamed:@"icon_pull_animation_" capInsets:UIEdgeInsetsZero duration:2.0];
    //[iv sizeToFit];
    iv.center = self.view.center;
    [self.view addSubview:iv];
    //UIEdgeInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
}
- (void)demo2
{
    //从一个图片数组创建一个动态图(animated image)。
    //images 是包含图片的数组。
    //duration 是动画播放周期。
    //数组中图片的 scale 和 size 属性要相等。
    UIImageView *iv  =[[UIImageView alloc] initWithFrame:CGRectMake(ZYFWidth / 2 - 50, ZYFHeight / 2 - 50, 100, 100)];
    iv.image = [UIImage animatedImageWithImages:@[[UIImage imageNamed:@"icon_pull_animation_1"],[UIImage imageNamed:@"icon_pull_animation_2"],[UIImage imageNamed:@"icon_pull_animation_3"],[UIImage imageNamed:@"icon_pull_animation_4"],[UIImage imageNamed:@"icon_pull_animation_5"],
                                                  ] duration:1.0];
    [self.view addSubview:iv];
}
- (void)demo1
{
    //创建一个动态图(animated image)
    //name 是部分或完整的文件路径，不带后缀名(The full or partial path to the file (sans suffix))。可以是中文
    //duration 是动画播放周期
    //函数会加载一系列 name + 数字 组成名字的图片，比如 name 是 “image”，会加载 image0，image1，……，一直到 image1024。如果缺少 image5，那么 image6之后的图片都不会加载
    //数字从 0 或者 1 开始，但是要连续。加载图片的 scale 和 size 属性要相等
    UIImageView *iv  =[[UIImageView alloc] initWithFrame:CGRectMake(ZYFWidth / 2 - 50, ZYFHeight / 2 - 50, 100, 100)];
    iv.image = [UIImage animatedImageNamed:@"icon_pull_animation_" duration:1.0];
    
    [self.view addSubview:iv];
}




@end
