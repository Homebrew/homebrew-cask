# encoding: UTF-8
cask :v1 => 'baiduinput' do
  version '3.3_1000e'
  sha256 '7fbfd7270ce5c8d3a7e801ce67b4e858089299ef3ba96b3c0feb110d87da24e2'

  url "http://wuxian.baidu.com/download/1000e/baiduinput_mac_v#{version}.dmg"
  homepage 'http://wuxian.baidu.com/input/mac.html'
  license :gratis

  installer :manual => '安装百度输入法.app'

  uninstall :pkgutil  => 'com.baidu.inputmethod.*',
            :delete   => '/Library/Input Methods/BaiduIM.app'
end
