cask 'sogouinput' do
  version '4.4.0.4883,1507781284'
  sha256 '5eb17ef3f7bd48b13f230eba7293c91c4511a765faffbfc04ea7fbcd1b52fa2d'

  url "http://cdn2.ime.sogou.com/dl/index/#{version.after_comma}/sogou_mac_#{version.major_minor.no_dots}b.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'https://pinyin.sogou.com/mac/'

  installer manual: '安装搜狗输入法.app'

  uninstall delete:    [
                         '/Library/Input Methods/SogouInput.app',
                         '/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator',
                       ],
            launchctl: 'com.sogou.SogouServices'

  zap trash:  [
                '~/.sogouinput',
                '~/Library/Application Support/Sogou/EmojiPanel',
                '~/Library/Application Support/Sogou/InputMethod',
                '~/Library/Preferences/com.sogou.SogouPreference.plist',
              ],
      delete: [
                '~/Library/Caches/SogouServices',
                '~/Library/Caches/com.sogou.SGAssistPanel',
                '~/Library/Caches/com.sogou.SogouPreference',
                '~/Library/Caches/com.sogou.inputmethod.sogou',
                '~/Library/Cookies/SogouServices.binarycookies',
                '~/Library/Cookies/com.sogou.SogouPreference.binarycookies',
                '~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies',
                '~/Library/Saved Application State/com.sogou.SogouInstaller.savedState',
              ],
      rmdir:  '~/Library/Application Support/Sogou'
end
