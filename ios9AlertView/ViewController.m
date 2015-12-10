//
//  ViewController.m
//  ios9AlertView
//
//  Created by 叶永长 on 12/10/15.
//  Copyright © 2015 YYC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 30);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)buttonclick:(UIButton *)sender{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"yes" message:@"没有message" preferredStyle:UIAlertControllerStyleActionSheet];
//    preferredStyle  为样式，，有两个可以选择 UIAlertControllerStyleActionSheet  样式为actionsheet的样式  UIAlertControllerStyleAlert为alertview的样式
    
    UIAlertAction *Sure = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction *action) {
        
        //添加确定的点击事件   点击事件写在这里
        
    }];//可以添加多个确定键
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction *action) {
        
        
        //添加取消的点击事件
        
        
    }];//只能添加一个取消按钮
    
    UIAlertAction *alert = [UIAlertAction actionWithTitle:@"警告" style:(UIAlertActionStyleDestructive) handler:^(UIAlertAction *action) {
        //添加警告的点击事件
    }];
    
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = @"填写";
//        
//    }];  //只有在alertView的样式下才可以添加
    
    [alertController addAction:Sure];
    [alertController addAction:cancel];
    [alertController addAction:alert];
    
    [self presentViewController:alertController animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
