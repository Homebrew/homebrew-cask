cask 'sogouinput' do
  version '3.4.0.78196'
  sha256 'ff0f9008dc3f4af2112f714b0ce45105a9606241f794c3734f9a5ac2c954e76d'

  url 'http://download.ime.sogou.com/1453172459/sogou_mac_34.dmg'
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer manual: '安装搜狗输入法.app'

  uninstall delete: '/Library/Input Methods/SogouInput.app'
end
