cask :v1 => 'sogouinput' do
  version '3.2.0.69954'
  sha256 'c720c06592360f6df6c436d5ce5dc42fd080c2545df0deb0634959fec9fd1edf'

  url 'http://download.ime.sogou.com/1433409088/sogou_mac_32c.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
