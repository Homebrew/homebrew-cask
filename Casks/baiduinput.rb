# encoding: UTF-8
class Baiduinput < Cask
  url 'http://shouji.baidu.com/download/1000e/baiduinput_mac_v3.2_1000e.dmg'
  homepage 'http://wuxian.baidu.com/input/mac.html'
  version '3.2'
  sha1 'f3d446d866e7c80fd250abac9f553d508092e656'
  install '安装百度输入法.pkg'
  uninstall(
    :pkgutil  => 'com.baidu.inputmethod.*',
    :files    => [
      '/Library/Input Methods/BaiduIM.app'
    ]
  )
end
