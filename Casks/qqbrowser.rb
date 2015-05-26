cask :v1 => 'qqbrowser' do
  version '2.3.2160'
  sha256 '6e0a3cf5d889f733cc5a4b38c8441bb32201ad1634c038d599be6e0864a65d14'

  url "http://dldir1.qq.com/invc/tt/QQBrowser_#{version.sub(%r{^.*\.},'')}.dmg"
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
                  '~/Library/Saved Application State/com.tencent.QQBrowser.savedState'
                 ]
end
