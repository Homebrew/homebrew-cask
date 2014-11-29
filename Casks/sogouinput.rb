# encoding: UTF-8
cask :v1 => 'sogouinput' do
  version '3.0.2.59116'
  sha256 '51df347ed60ea13bb39dd89ec5fc9eb6cd549f0080d9f94d97a7e0502b0edb0c'

  url "http://download.ime.sogou.com/1411725208/sogou_mac_30a.dmg"
  homepage 'http://pinyin.sogou.com/mac/'
  license :unknown

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
