# encoding: UTF-8
class Baiduinput < Cask
  version '3.3_1000e'
  sha256 '7fbfd7270ce5c8d3a7e801ce67b4e858089299ef3ba96b3c0feb110d87da24e2'

  url "http://wuxian.baidu.com/download/1000e/baiduinput_mac_v#{version}.dmg"
  homepage 'http://wuxian.baidu.com/input/mac.html'
  license :unknown

  uninstall :pkgutil  => 'com.baidu.inputmethod.*',
            :delete   => '/Library/Input Methods/BaiduIM.app'

  caveats do
    manual_installer '安装百度输入法.app'
  end
end
