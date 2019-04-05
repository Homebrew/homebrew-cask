cask 'sogouinput' do
  version '51a,1546049877'
  sha256 'b7a5fa3bb3aff46ddd6fc337bfbda862f7bb2e3552f993ddb4021e92532affee'

  url "http://cdn2.ime.sogou.com/dl/index/#{version.after_comma}/sogou_mac_#{version.before_comma}.zip"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'https://pinyin.sogou.com/mac/'

  installer manual: "sogou_mac_#{version.before_comma}.app"

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
