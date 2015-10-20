cask :v1 => 'sogouinput' do
  version '3.3.0.74249'
  sha256 'b9d80a202f5c7143ea7640015d9d73cf67b5e379f296af9f8c406edb233873c7'

  url 'http://download.ime.sogou.com/1443062217/sogou_mac_33d.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
