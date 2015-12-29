//
//  ZMHTableViewController.m
//  weibo_zimhy
//
//  Created by menghaizhang on 15/12/23.
//  Copyright © 2015年 menghaizhang. All rights reserved.
//

#import "ZMHTableViewController.h"
#import "ZMHWeiboTabBar.h"
#import "ZMHHomeViewController.h"
#import "ZMHMessageViewController.h"
#import "ZMHDiscoverController.h"
#import "ZMHProfileViewController.h"


@interface ZMHTableViewController ()

@end

@implementation ZMHTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor] ;
   
    //修改系统自带tabBar
    [self setValue:[[ZMHWeiboTabBar alloc]init] forKey:@"tabBar"] ;
     [self setupAllChilds] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

- (void) setupAllChilds {
    
    ZMHHomeViewController *home  = [[ZMHHomeViewController alloc] init] ;
    //UITabBar *button = [[UITabBar alloc] init] ;

    self.tabBar.tintColor = [UIColor orangeColor] ;
    home.tabBarItem.title = @"首页" ;
    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"] ;
   // home.view.backgroundColor = [UIColor blackColor] ;
   // [home.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal] ;
    [self addChildViewController:home] ;
    ZMHMessageViewController *message = [[ZMHMessageViewController alloc] init] ;;
    message.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    message.tabBarItem.title = @"消息" ;
    //message.view.backgroundColor = [UIColor grayColor] ;
    //[message.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal] ;
    [self addChildViewController:message] ;
    ZMHDiscoverController *discover = [[ZMHDiscoverController alloc] init] ;
    discover.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
   // [discover.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal] ;
    discover.tabBarItem.title = @"发现" ;
    //discover.view.backgroundColor = [ UIColor greenColor];
    
    [self addChildViewController:discover] ;

    ZMHProfileViewController *profile = [[ZMHProfileViewController alloc] init] ;
    profile.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
   // [profile.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal] ;
    
    profile.tabBarItem.title = @"设置" ;
   // profile.view.backgroundColor = [UIColor blueColor];
    
    [self addChildViewController:profile] ;
    
 
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.bbiejie
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
