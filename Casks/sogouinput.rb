cask 'sogouinput' do
  version '46b,1519980135'
  sha256 '63c8d2fef4d54ef5c72dffd573c0be89efa518d94373b88debb30cb7ac97191b'

  url "http://cdn2.ime.sogou.com/dl/index/#{version.after_comma}/sogou_mac_#{version.before_comma}.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'https://pinyin.sogou.com/mac/'

  installer manual: '安装搜狗输入法.app'

  uninstall delete:    [
                         '/Library/Input Methods/SogouInput.app',
                         '/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator',
                       ],
            launchctl: 'com.sogou.SogouServices'

  zap trash: [
               '~/.sogouinput',
               '~/Library/Application Support/Sogou/EmojiPanel',
               '~/Library/Application Support/Sogou/InputMethod',
               '~/Library/Caches/SogouServices',
               '~/Library/Caches/com.sogou.SGAssistPanel',
               '~/Library/Caches/com.sogou.SogouPreference',
               '~/Library/Caches/com.sogou.inputmethod.sogou',
               '~/Library/Cookies/SogouServices.binarycookies',
               '~/Library/Cookies/com.sogou.SogouPreference.binarycookies',
               '~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies',
               '~/Library/Preferences/com.sogou.SogouPreference.plist',
               '~/Library/Saved Application State/com.sogou.SogouInstaller.savedState',
             ],
      rmdir: '~/Library/Application Support/Sogou'
end
