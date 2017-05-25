cask 'sogouinput' do
  version '4.1.0e'
  sha256 '5a6de598b58bdef009baec4d1aa40a5a22bd1c8101c27e0fe7293fa03c0af019'

  url "http://cdn2.ime.sogou.com/db07a748450908725d04dea02185f5d0/592661a4/dl/index/1494841442/sogou_mac_41e.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'https://pinyin.sogou.com/mac/'

  installer manual: '安装搜狗输入法.app'

  uninstall delete: '/Library/Input Methods/SogouInput.app'

  zap delete: [
                '/Library/LaunchAgents/com.sogou.SogouServices.plist',
                '~/.sogouinput',
                '~/Library/Application Support/Sogou',
                '~/Library/Caches/SogouServices',
                '~/Library/Caches/com.sogou.SGAssistPanel',
                '~/Library/Cookies/SogouServices.binarycookies',
                '~/Library/Saved Application State/com.sogou.SogouInstaller.savedState',
              ]
end
