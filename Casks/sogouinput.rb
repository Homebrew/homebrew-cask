# encoding: UTF-8
cask :v1 => 'sogouinput' do
  version '3.0.0'
  sha256 'a11ef502efc364cce4191a0d2e6fb375fe9636438045b522431ac8829b40eae5'

  url "http://download.ime.sogou.com/1409894725/sogou_mac_#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg?st=SEx0_y78FJKFl1c6-uEEnA&e=1410158966&fn=sogou_mac_#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  homepage 'http://pinyin.sogou.com/mac/'
  license :unknown

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
