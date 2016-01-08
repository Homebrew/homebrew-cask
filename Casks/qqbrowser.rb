cask 'qqbrowser' do
  version '3.9.3952.400'
  sha256 '24ee717d4f74cdf3239d0f9898749ff0ee1fa2004707f698c2d86ddcac82c819'

  url "http://dldir1.qq.com/invc/tt/QQBrowser_for_Mac.dmg"
  name 'QQ浏览器'
  homepage 'http://browser.qq.com/mac/'
  license :commercial

  app 'QQBrowser.app'

  uninstall :quit => 'com.tencent.QQBrowser'

  zap :delete => [
                   '~/Library/Application Support/QQBrowser2',
                   '~/Library/Caches/com.tencent.QQBrowser',
                   '~/Library/Caches/com.tencent.QQBrowser.helper',
                   '~/Library/Caches/QQBrowser2',
                   '~/Library/Preferences/com.tencent.QQBrowser.helper.EH.plist',
                   '~/Library/Preferences/com.tencent.QQBrowser.helper.plist',
                   '~/Library/Preferences/com.tencent.QQBrowser.plist',
                   '~/Library/Saved Application State/com.tencent.QQBrowser.savedState',
                 ]
end
