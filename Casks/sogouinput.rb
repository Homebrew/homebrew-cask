cask :v1 => 'sogouinput' do
  version '3.3.0.74249'
  sha256 '322da9a13da489644ce86fb93f3ea4f7ca113e0314dadddf73fd176878999da4'

  url 'http://download.ime.sogou.com/1442312325/sogou_mac_33c.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
