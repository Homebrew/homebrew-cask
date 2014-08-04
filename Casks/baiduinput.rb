# encoding: UTF-8
class Baiduinput < Cask
  version '3.3_1000e'
  sha256 '57d50c7991e0d833ed5b34297168745590074d838f6948469dbaf8b92a84e082'

  url "http://wuxian.baidu.com/download/1000e/baiduinput_mac_v#{version}.dmg"
  homepage 'http://wuxian.baidu.com/input/mac.html'

  install '安装百度输入法.pkg'
  uninstall :pkgutil  => 'com.baidu.inputmethod.*',
            :files    => [
                          '/Library/Input Methods/BaiduIM.app'
                         ]
end
