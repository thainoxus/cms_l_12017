-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 29, 2017 at 08:53 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-22 09:38:57', '2017-11-22 09:38:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress', 'yes'),
(2, 'home', 'http://localhost:82/wordpress', 'yes'),
(3, 'blogname', 'wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'thainoxus@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:47:"post-tags-and-categories-for-pages/post-tag.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:3;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";i:3;s:10:"archives-2";i:4;s:17:"recent-comments-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:7:{i:1511948338;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511948346;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511948373;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511949097;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"ccd098f471dbcc3c8fe84865f60d1bee";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:80;}}}}i:1511949141;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"0130b445f2a3da777482c02317e1901a";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:81;}}}}i:1511949284;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"6392c3b0cd930fb020f301c8a7fc1e72";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:82;}}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:6:"social";i:7;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.9";s:12:"last_checked";i:1511942084;}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511942084;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(137, 'category_children', 'a:0:{}', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(159, 'theme_mods_twentyfifteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(160, '_transient_twentyfifteen_categories', '2', 'yes'),
(166, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1511979393', 'no'),
(167, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(189, '_transient_is_multi_author', '0', 'yes'),
(190, '_transient_twentyseventeen_categories', '1', 'yes'),
(191, '_transient_timeout_files_a83ef7053ba03f0687ef85163cc11ed067742c04823376eb1184885', '1511944719', 'no'),
(192, '_transient_files_a83ef7053ba03f0687ef85163cc11ed067742c04823376eb1184885', 'a:69:{s:7:"404.php";s:91:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/404.php";s:10:"README.txt";s:94:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/README.txt";s:11:"archive.php";s:95:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/archive.php";s:30:"assets/css/bootstrap-theme.css";s:114:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap-theme.css";s:34:"assets/css/bootstrap-theme.css.map";s:118:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap-theme.css.map";s:34:"assets/css/bootstrap-theme.min.css";s:118:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap-theme.min.css";s:38:"assets/css/bootstrap-theme.min.css.map";s:122:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap-theme.min.css.map";s:24:"assets/css/bootstrap.css";s:108:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap.css";s:28:"assets/css/bootstrap.css.map";s:112:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap.css.map";s:28:"assets/css/bootstrap.min.css";s:112:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap.min.css";s:32:"assets/css/bootstrap.min.css.map";s:116:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap.min.css.map";s:26:"assets/css/colors-dark.css";s:110:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/colors-dark.css";s:27:"assets/css/editor-style.css";s:111:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/editor-style.css";s:18:"assets/css/ie8.css";s:102:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/ie8.css";s:18:"assets/css/ie9.css";s:102:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/ie9.css";s:24:"assets/images/coffee.jpg";s:108:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/coffee.jpg";s:26:"assets/images/espresso.jpg";s:110:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/espresso.jpg";s:24:"assets/images/header.jpg";s:108:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg";s:26:"assets/images/sandwich.jpg";s:110:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/sandwich.jpg";s:27:"assets/images/svg-icons.svg";s:111:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/svg-icons.svg";s:22:"assets/js/bootstrap.js";s:106:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/bootstrap.js";s:26:"assets/js/bootstrap.min.js";s:110:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/bootstrap.min.js";s:31:"assets/js/customize-controls.js";s:115:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/customize-controls.js";s:30:"assets/js/customize-preview.js";s:114:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/customize-preview.js";s:19:"assets/js/global.js";s:103:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/global.js";s:18:"assets/js/html5.js";s:102:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/html5.js";s:23:"assets/js/jquery.min.js";s:107:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/jquery.min.js";s:28:"assets/js/jquery.scrollTo.js";s:112:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/jquery.scrollTo.js";s:23:"assets/js/navigation.js";s:107:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/navigation.js";s:16:"assets/js/npm.js";s:100:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/npm.js";s:19:"assets/js/qunit.css";s:103:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/qunit.css";s:18:"assets/js/qunit.js";s:102:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/qunit.js";s:32:"assets/js/skip-link-focus-fix.js";s:116:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/skip-link-focus-fix.js";s:12:"comments.php";s:96:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/comments.php";s:10:"footer.php";s:94:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/footer.php";s:14:"front-page.php";s:98:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/front-page.php";s:13:"functions.php";s:97:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/functions.php";s:10:"header.php";s:94:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/header.php";s:19:"inc/back-compat.php";s:103:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/back-compat.php";s:22:"inc/color-patterns.php";s:106:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/color-patterns.php";s:21:"inc/custom-header.php";s:105:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/custom-header.php";s:18:"inc/customizer.php";s:102:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/customizer.php";s:22:"inc/icon-functions.php";s:106:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/icon-functions.php";s:26:"inc/template-functions.php";s:110:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/template-functions.php";s:21:"inc/template-tags.php";s:105:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/inc/template-tags.php";s:9:"index.php";s:93:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/index.php";s:8:"page.php";s:92:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/page.php";s:7:"rtl.css";s:91:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/rtl.css";s:14:"screenshot.png";s:98:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/screenshot.png";s:10:"search.php";s:94:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/search.php";s:14:"searchform.php";s:98:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/searchform.php";s:11:"sidebar.php";s:95:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/sidebar.php";s:10:"single.php";s:94:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/single.php";s:9:"style.css";s:93:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";s:40:"template-parts/footer/footer-widgets.php";s:124:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/footer/footer-widgets.php";s:35:"template-parts/footer/site-info.php";s:119:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/footer/site-info.php";s:38:"template-parts/header/header-image.php";s:122:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/header/header-image.php";s:39:"template-parts/header/site-branding.php";s:123:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/header/site-branding.php";s:44:"template-parts/navigation/navigation-top.php";s:128:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/navigation/navigation-top.php";s:49:"template-parts/page/content-front-page-panels.php";s:133:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-front-page-panels.php";s:42:"template-parts/page/content-front-page.php";s:126:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-front-page.php";s:36:"template-parts/page/content-page.php";s:120:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-page.php";s:37:"template-parts/post/content-audio.php";s:121:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-audio.php";s:39:"template-parts/post/content-excerpt.php";s:123:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-excerpt.php";s:39:"template-parts/post/content-gallery.php";s:123:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-gallery.php";s:37:"template-parts/post/content-image.php";s:121:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-image.php";s:36:"template-parts/post/content-none.php";s:120:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-none.php";s:37:"template-parts/post/content-video.php";s:121:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-video.php";s:31:"template-parts/post/content.php";s:115:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content.php";}', 'no'),
(193, '_transient_timeout_plugin_slugs', '1512028497', 'no'),
(194, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:47:"post-tags-and-categories-for-pages/post-tag.php";}', 'no'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(196, '_site_transient_timeout_theme_roots', '1511943697', 'no'),
(197, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(200, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(201, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511942097;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1511343463:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1511343507:1'),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1511745182:1'),
(32, 15, '_menu_item_type', 'post_type'),
(33, 15, '_menu_item_menu_item_parent', '0'),
(34, 15, '_menu_item_object_id', '2'),
(35, 15, '_menu_item_object', 'page'),
(36, 15, '_menu_item_target', ''),
(37, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 15, '_menu_item_xfn', ''),
(39, 15, '_menu_item_url', ''),
(41, 17, '_edit_last', '1'),
(42, 17, '_edit_lock', '1511936196:1'),
(43, 19, '_edit_last', '1'),
(44, 19, '_edit_lock', '1511936110:1'),
(45, 21, '_edit_last', '1'),
(46, 21, '_edit_lock', '1511936148:1'),
(47, 2, '_edit_lock', '1511940982:1'),
(48, 2, '_edit_last', '1'),
(49, 26, '_edit_last', '1'),
(50, 26, '_edit_lock', '1511936205:1'),
(51, 29, '_edit_last', '1'),
(52, 29, '_edit_lock', '1511936214:1'),
(53, 32, '_edit_last', '1'),
(54, 32, '_edit_lock', '1511936220:1'),
(55, 34, '_edit_last', '1'),
(56, 34, '_edit_lock', '1511936226:1'),
(57, 36, '_edit_last', '1'),
(58, 36, '_edit_lock', '1511936233:1'),
(59, 38, '_edit_last', '1'),
(60, 38, '_edit_lock', '1511936262:1'),
(61, 40, '_edit_last', '1'),
(62, 40, '_edit_lock', '1511936270:1'),
(63, 42, '_edit_last', '1'),
(64, 42, '_edit_lock', '1511936277:1'),
(65, 44, '_edit_last', '1'),
(66, 44, '_edit_lock', '1511936356:1'),
(67, 46, '_edit_last', '1'),
(68, 46, '_edit_lock', '1511936351:1'),
(69, 48, '_edit_last', '1'),
(70, 48, '_edit_lock', '1511936359:1'),
(71, 46, '_wp_trash_meta_status', 'publish'),
(72, 46, '_wp_trash_meta_time', '1511936495'),
(73, 46, '_wp_desired_post_slug', '14-2'),
(74, 44, '_wp_trash_meta_status', 'publish'),
(75, 44, '_wp_trash_meta_time', '1511936500'),
(76, 44, '_wp_desired_post_slug', '13-2'),
(77, 48, '_wp_trash_meta_status', 'publish'),
(78, 48, '_wp_trash_meta_time', '1511936503'),
(79, 48, '_wp_desired_post_slug', '13-3'),
(80, 12, '_wp_trash_meta_status', 'publish'),
(81, 12, '_wp_trash_meta_time', '1511936515'),
(82, 12, '_wp_desired_post_slug', 'post_22222222222'),
(83, 10, '_wp_trash_meta_status', 'publish'),
(84, 10, '_wp_trash_meta_time', '1511936515'),
(85, 10, '_wp_desired_post_slug', 'post_11111111111'),
(86, 4, '_wp_trash_meta_status', 'publish'),
(87, 4, '_wp_trash_meta_time', '1511936516'),
(88, 4, '_wp_desired_post_slug', 'post_1'),
(89, 1, '_wp_trash_meta_status', 'publish'),
(90, 1, '_wp_trash_meta_time', '1511936516'),
(91, 1, '_wp_desired_post_slug', 'hello-world'),
(92, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(93, 51, '_edit_last', '1'),
(94, 51, '_edit_lock', '1511936379:1'),
(97, 53, '_edit_last', '1'),
(100, 53, '_edit_lock', '1511936386:1'),
(101, 55, '_edit_last', '1'),
(102, 55, '_edit_lock', '1511936392:1'),
(105, 57, '_edit_last', '1'),
(106, 57, '_edit_lock', '1511936398:1'),
(109, 59, '_edit_last', '1'),
(110, 59, '_edit_lock', '1511936408:1'),
(113, 61, '_edit_last', '1'),
(114, 61, '_edit_lock', '1511936421:1'),
(117, 63, '_edit_last', '1'),
(120, 63, '_edit_lock', '1511936428:1'),
(121, 65, '_edit_last', '1'),
(122, 65, '_edit_lock', '1511937039:1'),
(125, 67, '_edit_last', '1'),
(126, 67, '_edit_lock', '1511936584:1'),
(129, 69, '_edit_last', '1'),
(130, 69, '_edit_lock', '1511936570:1'),
(133, 71, '_edit_last', '1'),
(136, 71, '_edit_lock', '1511936559:1'),
(137, 73, '_edit_last', '1'),
(140, 73, '_edit_lock', '1511936549:1'),
(145, 73, '_wp_trash_meta_status', 'publish'),
(146, 73, '_wp_trash_meta_time', '1511936965'),
(147, 73, '_wp_desired_post_slug', '12'),
(150, 78, '_edit_lock', '1511937127:1'),
(151, 78, '_edit_last', '1'),
(154, 80, '_wp_attached_file', '2017/11/post-tag.php'),
(155, 80, '_wp_attachment_context', 'upgrader'),
(158, 82, '_wp_attached_file', '2017/11/post-tags-and-categories-for-pages.1.4.1.zip'),
(159, 82, '_wp_attachment_context', 'upgrader');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-22 09:38:57', '2017-11-22 09:38:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-11-29 06:21:56', '2017-11-29 06:21:56', '', 0, 'http://localhost:82/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-22 09:38:57', '2017-11-22 09:38:57', '<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Đây là một trang ví dụ. </span><span style="vertical-align: inherit;">Nó khác với bài đăng trên blog vì nó sẽ ở lại một nơi và sẽ hiển thị trong điều hướng trang web của bạn (trong hầu hết các chủ đề). </span><span style="vertical-align: inherit;">Hầu hết mọi người bắt đầu với một trang Giới thiệu giới thiệu họ với khách truy cập trang web tiềm năng. </span><span style="vertical-align: inherit;">Nó có thể nói một cái gì đó như thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Hi there! </span><span style="vertical-align: inherit;">Tôi là một người đi xe đạp theo ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. </span><span style="vertical-align: inherit;">Tôi sống ở Los Angeles, có một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. </span><span style="vertical-align: inherit;">(Và gettin ''bị bắt trong mưa.)</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">...hoặc thứ gì đó giống thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp chất lượng doohickeys cho công chúng kể từ đó. </span><span style="vertical-align: inherit;">Nằm ở thành phố Gotham, XYZ sử dụng hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Là người dùng WordPress mới, bạn nên vào </span></span><a href="http://localhost:82/wordpress/wp-admin/"><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">bảng điều khiển</span></span></a><span style="vertical-align: inherit;"><span style="vertical-align: inherit;"> để xóa trang này và tạo các trang mới cho nội dung của bạn. </span><span style="vertical-align: inherit;">Chúc vui vẻ!</span></span>', '1', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-29 06:18:48', '2017-11-29 06:18:48', '', 0, 'http://localhost:82/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-22 09:39:44', '2017-11-22 09:39:44', 'sadgsadfgasdgasdgdsfggafdsgasfdgadsfhadfhgasfhadfhadfhadfhasdgasdfgadfhadfhadfhasdgasdgsadg', 'post_5', '', 'trash', 'open', 'open', '', 'post_1__trashed', '', '', '2017-11-29 06:21:56', '2017-11-29 06:21:56', '', 0, 'http://localhost:82/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2017-11-22 09:39:44', '2017-11-22 09:39:44', 'sadgsadfgasdgasdgdsfg', 'post_1', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-22 09:39:44', '2017-11-22 09:39:44', '', 4, 'http://localhost:82/wordpress/2017/11/22/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-11-22 09:39:50', '2017-11-22 09:39:50', 'sadgsadfgasdgasdgdsfggafdsgasfdgadsfhadfh', 'post_2', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-22 09:39:50', '2017-11-22 09:39:50', '', 4, 'http://localhost:82/wordpress/2017/11/22/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-11-22 09:39:55', '2017-11-22 09:39:55', 'sadgsadfgasdgasdgdsfggafdsgasfdgadsfhadfhgasfhadfhadfhadfh', 'post_3', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-22 09:39:55', '2017-11-22 09:39:55', '', 4, 'http://localhost:82/wordpress/2017/11/22/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-11-22 09:39:59', '2017-11-22 09:39:59', 'sadgsadfgasdgasdgdsfggafdsgasfdgadsfhadfhgasfhadfhadfhadfhasdgasdfgadfhadfhadfh', 'post_4', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-22 09:39:59', '2017-11-22 09:39:59', '', 4, 'http://localhost:82/wordpress/2017/11/22/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-11-22 09:40:05', '2017-11-22 09:40:05', 'sadgsadfgasdgasdgdsfggafdsgasfdgadsfhadfhgasfhadfhadfhadfhasdgasdfgadfhadfhadfhasdgasdgsadg', 'post_5', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-22 09:40:05', '2017-11-22 09:40:05', '', 4, 'http://localhost:82/wordpress/2017/11/22/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-11-22 09:40:45', '2017-11-22 09:40:45', 'saddddddddddddddddddddddd', 'post_11111111111', '', 'trash', 'open', 'open', '', 'post_11111111111__trashed', '', '', '2017-11-29 06:21:55', '2017-11-29 06:21:55', '', 0, 'http://localhost:82/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2017-11-22 09:40:45', '2017-11-22 09:40:45', 'saddddddddddddddddddddddd', 'post_11111111111', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-11-22 09:40:45', '2017-11-22 09:40:45', '', 10, 'http://localhost:82/wordpress/2017/11/22/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-11-22 09:41:04', '2017-11-22 09:41:04', 'asdgfgasdgwerqwefsazdgsadgasd', 'post_22222222222', '', 'trash', 'open', 'open', '', 'post_22222222222__trashed', '', '', '2017-11-29 06:21:55', '2017-11-29 06:21:55', '', 0, 'http://localhost:82/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2017-11-22 09:41:04', '2017-11-22 09:41:04', 'asdgfgasdgwerqwefsazdgsadgasd', 'post_22222222222', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-22 09:41:04', '2017-11-22 09:41:04', '', 12, 'http://localhost:82/wordpress/2017/11/22/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-11-22 09:41:57', '2017-11-22 09:41:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-22 09:41:57', '2017-11-22 09:41:57', '', 1, 'http://localhost:82/wordpress/2017/11/22/1-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-11-27 02:51:11', '2017-11-27 02:51:11', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2017-11-27 02:51:11', '2017-11-27 02:51:11', '', 0, 'http://localhost:82/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-11-29 06:16:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:16:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2017-11-29 06:17:21', '2017-11-29 06:17:21', '1', '4', '', 'publish', 'closed', 'closed', '', '1-2', '', '', '2017-11-29 06:18:58', '2017-11-29 06:18:58', '', 0, 'http://localhost:82/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-11-29 06:17:21', '2017-11-29 06:17:21', '1', '1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-11-29 06:17:21', '2017-11-29 06:17:21', '', 17, 'http://localhost:82/wordpress/2017/11/29/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-11-29 06:17:32', '2017-11-29 06:17:32', '2', '2', '', 'publish', 'closed', 'closed', '', '2-2', '', '', '2017-11-29 06:17:32', '2017-11-29 06:17:32', '', 0, 'http://localhost:82/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-11-29 06:17:32', '2017-11-29 06:17:32', '2', '2', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-11-29 06:17:32', '2017-11-29 06:17:32', '', 19, 'http://localhost:82/wordpress/2017/11/29/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-11-29 06:17:59', '2017-11-29 06:17:59', '3', '3', '', 'publish', 'closed', 'closed', '', '3-2', '', '', '2017-11-29 06:17:59', '2017-11-29 06:17:59', '', 0, 'http://localhost:82/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-11-29 06:17:59', '2017-11-29 06:17:59', '3', '3', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-11-29 06:17:59', '2017-11-29 06:17:59', '', 21, 'http://localhost:82/wordpress/2017/11/29/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-11-29 06:18:40', '2017-11-29 06:18:40', '<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Đây là một trang ví dụ. </span><span style="vertical-align: inherit;">Nó khác với bài đăng trên blog vì nó sẽ ở lại một nơi và sẽ hiển thị trong điều hướng trang web của bạn (trong hầu hết các chủ đề). </span><span style="vertical-align: inherit;">Hầu hết mọi người bắt đầu với một trang Giới thiệu giới thiệu họ với khách truy cập trang web tiềm năng. </span><span style="vertical-align: inherit;">Nó có thể nói một cái gì đó như thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Hi there! </span><span style="vertical-align: inherit;">Tôi là một người đi xe đạp theo ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. </span><span style="vertical-align: inherit;">Tôi sống ở Los Angeles, có một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. </span><span style="vertical-align: inherit;">(Và gettin ''bị bắt trong mưa.)</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">...hoặc thứ gì đó giống thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp chất lượng doohickeys cho công chúng kể từ đó. </span><span style="vertical-align: inherit;">Nằm ở thành phố Gotham, XYZ sử dụng hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Là người dùng WordPress mới, bạn nên vào </span></span><a href="http://localhost:82/wordpress/wp-admin/"><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">bảng điều khiển</span></span></a><span style="vertical-align: inherit;"><span style="vertical-align: inherit;"> để xóa trang này và tạo các trang mới cho nội dung của bạn. </span><span style="vertical-align: inherit;">Chúc vui vẻ!</span></span>', '5', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-29 06:18:40', '2017-11-29 06:18:40', '', 2, 'http://localhost:82/wordpress/2017/11/29/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-11-29 06:18:48', '2017-11-29 06:18:48', '<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Đây là một trang ví dụ. </span><span style="vertical-align: inherit;">Nó khác với bài đăng trên blog vì nó sẽ ở lại một nơi và sẽ hiển thị trong điều hướng trang web của bạn (trong hầu hết các chủ đề). </span><span style="vertical-align: inherit;">Hầu hết mọi người bắt đầu với một trang Giới thiệu giới thiệu họ với khách truy cập trang web tiềm năng. </span><span style="vertical-align: inherit;">Nó có thể nói một cái gì đó như thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Hi there! </span><span style="vertical-align: inherit;">Tôi là một người đi xe đạp theo ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. </span><span style="vertical-align: inherit;">Tôi sống ở Los Angeles, có một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. </span><span style="vertical-align: inherit;">(Và gettin ''bị bắt trong mưa.)</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">...hoặc thứ gì đó giống thế này:</span></span>\r\n<blockquote><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp chất lượng doohickeys cho công chúng kể từ đó. </span><span style="vertical-align: inherit;">Nằm ở thành phố Gotham, XYZ sử dụng hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</span></span></blockquote>\r\n<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">Là người dùng WordPress mới, bạn nên vào </span></span><a href="http://localhost:82/wordpress/wp-admin/"><span style="vertical-align: inherit;"><span style="vertical-align: inherit;">bảng điều khiển</span></span></a><span style="vertical-align: inherit;"><span style="vertical-align: inherit;"> để xóa trang này và tạo các trang mới cho nội dung của bạn. </span><span style="vertical-align: inherit;">Chúc vui vẻ!</span></span>', '1', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-29 06:18:48', '2017-11-29 06:18:48', '', 2, 'http://localhost:82/wordpress/2017/11/29/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-11-29 06:18:58', '2017-11-29 06:18:58', '1', '4', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-11-29 06:18:58', '2017-11-29 06:18:58', '', 17, 'http://localhost:82/wordpress/2017/11/29/17-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-11-29 06:19:05', '2017-11-29 06:19:05', '55555', '5', '', 'publish', 'closed', 'closed', '', '5-2', '', '', '2017-11-29 06:19:08', '2017-11-29 06:19:08', '', 0, 'http://localhost:82/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-11-29 06:19:05', '2017-11-29 06:19:05', '', '5', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-29 06:19:05', '2017-11-29 06:19:05', '', 26, 'http://localhost:82/wordpress/2017/11/29/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-11-29 06:19:08', '2017-11-29 06:19:08', '55555', '5', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-29 06:19:08', '2017-11-29 06:19:08', '', 26, 'http://localhost:82/wordpress/2017/11/29/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-11-29 06:19:13', '2017-11-29 06:19:13', '666666', '6', '', 'publish', 'closed', 'closed', '', '6-2', '', '', '2017-11-29 06:19:17', '2017-11-29 06:19:17', '', 0, 'http://localhost:82/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2017-11-29 06:19:13', '2017-11-29 06:19:13', '', '6', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-11-29 06:19:13', '2017-11-29 06:19:13', '', 29, 'http://localhost:82/wordpress/2017/11/29/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-11-29 06:19:17', '2017-11-29 06:19:17', '666666', '6', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-11-29 06:19:17', '2017-11-29 06:19:17', '', 29, 'http://localhost:82/wordpress/2017/11/29/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-11-29 06:19:23', '2017-11-29 06:19:23', '7777777', '7', '', 'publish', 'closed', 'closed', '', '7-2', '', '', '2017-11-29 06:19:23', '2017-11-29 06:19:23', '', 0, 'http://localhost:82/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2017-11-29 06:19:23', '2017-11-29 06:19:23', '7777777', '7', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-29 06:19:23', '2017-11-29 06:19:23', '', 32, 'http://localhost:82/wordpress/2017/11/29/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-11-29 06:19:29', '2017-11-29 06:19:29', '888888', '8', '', 'publish', 'closed', 'closed', '', '8-2', '', '', '2017-11-29 06:19:29', '2017-11-29 06:19:29', '', 0, 'http://localhost:82/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2017-11-29 06:19:29', '2017-11-29 06:19:29', '888888', '8', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-11-29 06:19:29', '2017-11-29 06:19:29', '', 34, 'http://localhost:82/wordpress/2017/11/29/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-11-29 06:19:35', '2017-11-29 06:19:35', '99', '9', '', 'publish', 'closed', 'closed', '', '9-2', '', '', '2017-11-29 06:19:35', '2017-11-29 06:19:35', '', 0, 'http://localhost:82/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2017-11-29 06:19:35', '2017-11-29 06:19:35', '99', '9', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-11-29 06:19:35', '2017-11-29 06:19:35', '', 36, 'http://localhost:82/wordpress/2017/11/29/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-11-29 06:20:05', '2017-11-29 06:20:05', '100', '10', '', 'publish', 'closed', 'closed', '', '10-2', '', '', '2017-11-29 06:20:05', '2017-11-29 06:20:05', '', 0, 'http://localhost:82/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-11-29 06:20:05', '2017-11-29 06:20:05', '100', '10', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-11-29 06:20:05', '2017-11-29 06:20:05', '', 38, 'http://localhost:82/wordpress/2017/11/29/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-11-29 06:20:13', '2017-11-29 06:20:13', '11111111', '11', '', 'publish', 'closed', 'closed', '', '11-2', '', '', '2017-11-29 06:20:13', '2017-11-29 06:20:13', '', 0, 'http://localhost:82/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-11-29 06:20:13', '2017-11-29 06:20:13', '11111111', '11', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-11-29 06:20:13', '2017-11-29 06:20:13', '', 40, 'http://localhost:82/wordpress/2017/11/29/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-11-29 06:20:19', '2017-11-29 06:20:19', '12222', '12', '', 'publish', 'closed', 'closed', '', '12-2', '', '', '2017-11-29 06:20:19', '2017-11-29 06:20:19', '', 0, 'http://localhost:82/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-11-29 06:20:19', '2017-11-29 06:20:19', '12222', '12', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-29 06:20:19', '2017-11-29 06:20:19', '', 42, 'http://localhost:82/wordpress/2017/11/29/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-11-29 06:20:27', '2017-11-29 06:20:27', '13333', '13', '', 'trash', 'closed', 'closed', '', '13-2__trashed', '', '', '2017-11-29 06:21:40', '2017-11-29 06:21:40', '', 0, 'http://localhost:82/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2017-11-29 06:20:27', '2017-11-29 06:20:27', '13333', '13', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-29 06:20:27', '2017-11-29 06:20:27', '', 44, 'http://localhost:82/wordpress/2017/11/29/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-11-29 06:20:34', '2017-11-29 06:20:34', '1444444', '14', '', 'trash', 'closed', 'closed', '', '14-2__trashed', '', '', '2017-11-29 06:21:35', '2017-11-29 06:21:35', '', 0, 'http://localhost:82/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-11-29 06:20:34', '2017-11-29 06:20:34', '1444444', '14', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-11-29 06:20:34', '2017-11-29 06:20:34', '', 46, 'http://localhost:82/wordpress/2017/11/29/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-11-29 06:20:53', '2017-11-29 06:20:53', '15555', '15', '', 'trash', 'closed', 'closed', '', '13-3__trashed', '', '', '2017-11-29 06:21:43', '2017-11-29 06:21:43', '', 0, 'http://localhost:82/wordpress/?page_id=48', 0, 'page', '', 0),
(49, 1, '2017-11-29 06:20:53', '2017-11-29 06:20:53', '1333333', '13', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-11-29 06:20:53', '2017-11-29 06:20:53', '', 48, 'http://localhost:82/wordpress/2017/11/29/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-11-29 06:21:02', '2017-11-29 06:21:02', '15555', '15', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-11-29 06:21:02', '2017-11-29 06:21:02', '', 48, 'http://localhost:82/wordpress/2017/11/29/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-11-29 06:22:01', '2017-11-29 06:22:01', '1111111111', '1', '', 'publish', 'open', 'open', '', '1', '', '', '2017-11-29 06:22:01', '2017-11-29 06:22:01', '', 0, 'http://localhost:82/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2017-11-29 06:22:01', '2017-11-29 06:22:01', '1111111111', '1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-11-29 06:22:01', '2017-11-29 06:22:01', '', 51, 'http://localhost:82/wordpress/2017/11/29/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-11-29 06:22:08', '2017-11-29 06:22:08', '222222222', '2', '', 'publish', 'open', 'open', '', '2', '', '', '2017-11-29 06:22:08', '2017-11-29 06:22:08', '', 0, 'http://localhost:82/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2017-11-29 06:22:08', '2017-11-29 06:22:08', '222222222', '2', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-11-29 06:22:08', '2017-11-29 06:22:08', '', 53, 'http://localhost:82/wordpress/2017/11/29/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-11-29 06:22:15', '2017-11-29 06:22:15', '333333333', '3', '', 'publish', 'open', 'open', '', '3', '', '', '2017-11-29 06:22:15', '2017-11-29 06:22:15', '', 0, 'http://localhost:82/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2017-11-29 06:22:15', '2017-11-29 06:22:15', '333333333', '3', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-11-29 06:22:15', '2017-11-29 06:22:15', '', 55, 'http://localhost:82/wordpress/2017/11/29/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-11-29 06:22:21', '2017-11-29 06:22:21', '444444444444', '4', '', 'publish', 'open', 'open', '', '4', '', '', '2017-11-29 06:22:21', '2017-11-29 06:22:21', '', 0, 'http://localhost:82/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2017-11-29 06:22:21', '2017-11-29 06:22:21', '444444444444', '4', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-11-29 06:22:21', '2017-11-29 06:22:21', '', 57, 'http://localhost:82/wordpress/2017/11/29/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-11-29 06:22:31', '2017-11-29 06:22:31', '5555555555555', '5', '', 'publish', 'open', 'open', '', '5', '', '', '2017-11-29 06:22:31', '2017-11-29 06:22:31', '', 0, 'http://localhost:82/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2017-11-29 06:22:31', '2017-11-29 06:22:31', '5555555555555', '5', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-11-29 06:22:31', '2017-11-29 06:22:31', '', 59, 'http://localhost:82/wordpress/2017/11/29/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-11-29 06:22:37', '2017-11-29 06:22:37', '6666666666', '6', '', 'publish', 'open', 'open', '', '6', '', '', '2017-11-29 06:22:37', '2017-11-29 06:22:37', '', 0, 'http://localhost:82/wordpress/?p=61', 0, 'post', '', 0),
(62, 1, '2017-11-29 06:22:37', '2017-11-29 06:22:37', '6666666666', '6', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-11-29 06:22:37', '2017-11-29 06:22:37', '', 61, 'http://localhost:82/wordpress/2017/11/29/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-11-29 06:22:51', '2017-11-29 06:22:51', '7777777777', '7', '', 'publish', 'open', 'open', '', '7', '', '', '2017-11-29 06:22:51', '2017-11-29 06:22:51', '', 0, 'http://localhost:82/wordpress/?p=63', 0, 'post', '', 0),
(64, 1, '2017-11-29 06:22:51', '2017-11-29 06:22:51', '7777777777', '7', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-11-29 06:22:51', '2017-11-29 06:22:51', '', 63, 'http://localhost:82/wordpress/2017/11/29/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-11-29 06:22:57', '2017-11-29 06:22:57', '<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">8888888888</span></span>', '8', '', 'publish', 'open', 'open', '', '8', '', '', '2017-11-29 06:30:38', '2017-11-29 06:30:38', '', 0, 'http://localhost:82/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2017-11-29 06:22:57', '2017-11-29 06:22:57', '8888888888', '8', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-11-29 06:22:57', '2017-11-29 06:22:57', '', 65, 'http://localhost:82/wordpress/2017/11/29/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-11-29 06:23:02', '2017-11-29 06:23:02', '9999999999', '9', '', 'publish', 'open', 'open', '', '9', '', '', '2017-11-29 06:23:02', '2017-11-29 06:23:02', '', 0, 'http://localhost:82/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2017-11-29 06:23:02', '2017-11-29 06:23:02', '9999999999', '9', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-11-29 06:23:02', '2017-11-29 06:23:02', '', 67, 'http://localhost:82/wordpress/2017/11/29/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-11-29 06:23:18', '2017-11-29 06:23:18', '10000000000', '10', '', 'publish', 'open', 'open', '', '11', '', '', '2017-11-29 06:25:12', '2017-11-29 06:25:12', '', 0, 'http://localhost:82/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2017-11-29 06:23:18', '2017-11-29 06:23:18', '1111111111', '11', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-11-29 06:23:18', '2017-11-29 06:23:18', '', 69, 'http://localhost:82/wordpress/2017/11/29/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-11-29 06:23:31', '2017-11-29 06:23:31', '11111111111', '11', '', 'publish', 'open', 'open', '', '10', '', '', '2017-11-29 06:25:01', '2017-11-29 06:25:01', '', 0, 'http://localhost:82/wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2017-11-29 06:23:31', '2017-11-29 06:23:31', '100000', '10', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-11-29 06:23:31', '2017-11-29 06:23:31', '', 71, 'http://localhost:82/wordpress/2017/11/29/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-11-29 06:24:51', '2017-11-29 06:24:51', '122', '12', '', 'trash', 'open', 'open', '', '12__trashed', '', '', '2017-11-29 06:29:25', '2017-11-29 06:29:25', '', 0, 'http://localhost:82/wordpress/?p=73', 0, 'post', '', 0),
(74, 1, '2017-11-29 06:24:51', '2017-11-29 06:24:51', '122', '12', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-11-29 06:24:51', '2017-11-29 06:24:51', '', 73, 'http://localhost:82/wordpress/2017/11/29/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-11-29 06:25:01', '2017-11-29 06:25:01', '11111111111', '11', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-11-29 06:25:01', '2017-11-29 06:25:01', '', 71, 'http://localhost:82/wordpress/2017/11/29/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-11-29 06:25:12', '2017-11-29 06:25:12', '10000000000', '10', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-11-29 06:25:12', '2017-11-29 06:25:12', '', 69, 'http://localhost:82/wordpress/2017/11/29/69-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-11-29 06:30:38', '2017-11-29 06:30:38', '<span style="vertical-align: inherit;"><span style="vertical-align: inherit;">8888888888</span></span>', '8', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-11-29 06:30:38', '2017-11-29 06:30:38', '', 65, 'http://localhost:82/wordpress/2017/11/29/65-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-11-29 06:34:25', '2017-11-29 06:34:25', '122222', '12', '', 'publish', 'open', 'open', '', '12', '', '', '2017-11-29 06:34:25', '2017-11-29 06:34:25', '', 0, 'http://localhost:82/wordpress/?p=78', 0, 'post', '', 0),
(79, 1, '2017-11-29 06:34:25', '2017-11-29 06:34:25', '122222', '12', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-11-29 06:34:25', '2017-11-29 06:34:25', '', 78, 'http://localhost:82/wordpress/2017/11/29/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-11-29 07:51:37', '2017-11-29 07:51:37', 'http://localhost:82/wordpress/wp-content/uploads/2017/11/post-tag.php', 'post-tag.php', '', 'private', 'open', 'closed', '', 'post-tag-php', '', '', '2017-11-29 07:51:37', '2017-11-29 07:51:37', '', 0, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/post-tag.php', 0, 'attachment', '', 0),
(82, 1, '2017-11-29 07:54:44', '2017-11-29 07:54:44', 'http://localhost:82/wordpress/wp-content/uploads/2017/11/post-tags-and-categories-for-pages.1.4.1.zip', 'post-tags-and-categories-for-pages.1.4.1.zip', '', 'private', 'open', 'closed', '', 'post-tags-and-categories-for-pages-1-4-1-zip', '', '', '2017-11-29 07:54:44', '2017-11-29 07:54:44', '', 0, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/post-tags-and-categories-for-pages.1.4.1.zip', 0, 'attachment', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, '1111111111', '1111111111', 0),
(3, '222222222', '222222222', 0),
(4, '3333333333', '3333333333', 0),
(5, '44444444444', '44444444444', 0),
(6, 'aaaaaaaaaaa', 'aaaaaaaaaaa', 0),
(7, 'Social', 'social', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(10, 2, 0),
(10, 3, 0),
(10, 4, 0),
(12, 2, 0),
(12, 3, 0),
(12, 4, 0),
(15, 7, 0),
(51, 1, 0),
(53, 1, 0),
(55, 1, 0),
(57, 1, 0),
(59, 1, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0),
(67, 1, 0),
(69, 1, 0),
(71, 1, 0),
(73, 1, 0),
(78, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 12),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"0d7702ea4ae1b833eeaf829a8ceb7058fde09127ac9eae85ec4804466f0bfbc9";a:4:{s:10:"expiration";i:1512951931;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511742331;}s:64:"32f459455d5c85ffe738d6207d457b076e8a345b90dfd975f8560014505566c0";a:4:{s:10:"expiration";i:1512108986;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511936186;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1511343541'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '16'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(22, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(23, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(24, 2, 'nickname', 'thaina'),
(25, 2, 'first_name', 'Thái'),
(26, 2, 'last_name', 'Nguyễn'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJ31CKcJMbRvvmvOAo6qf4AVRcsTfn/', 'admin', 'thainoxus@gmail.com', '', '2017-11-22 09:38:57', '', 0, 'admin'),
(2, 'thaina', '$P$BI8yTpAWXjv9MdJjXeUq/JuibNfsrv0', 'thaina', 'thainoxus1@gmail.com', '', '2017-11-29 06:33:36', '1511937217:$P$BC4m/tOY6X/28AwNcTdnMtb2tMXiDO/', 0, 'Thái Nguyễn');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
