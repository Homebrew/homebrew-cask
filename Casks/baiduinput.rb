# encoding: UTF-8
class Baiduinput < Cask
  url 'http://shouji.baidu.com/download/1000e/baiduinput_mac_v3.2_1000e.dmg'
  homepage 'http://wuxian.baidu.com/input/mac.html'
  version '3.2'
  sha256 '802489dc6d5af6a1a9efb22d6730ddb49e0d562366c4d1c01fa7a0903808af2c'
  install '安装百度输入法.pkg'
  uninstall(
    :pkgutil  => 'com.baidu.inputmethod.*',
    :files    => [
      '/Library/Input Methods/BaiduIM.app'
    ]
  )
end
