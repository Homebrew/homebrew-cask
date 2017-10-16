cask 'sogouinput' do
  version '4.3.0.4743'
  sha256 '2b9d2862d5879e8fdedcffe1427a73912b5b2c8728d9ae19d9bb1ec0c242d684'

  url "http://sw.bos.baidu.com/sw-search-sp/software/bc71a062de2c9/SogouInput_mac_#{version}.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'https://rj.baidu.com/'

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
