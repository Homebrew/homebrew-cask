cask 'sogouinput' do
  version '3.8.0.2054'
  sha256 '18807c27d26460d8db76a086d403efe783f7406d90cad7248b829111f981ed09'

  url "http://cdn1.ime.sogou.com/SogouInput_V#{version}.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'

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
