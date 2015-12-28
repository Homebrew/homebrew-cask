cask 'qqbrowser' do
  version '3.9.3943.400'
  sha256 '4770ad6d40db55c765a8937424b228778e53c960e41db1e6112b788557ed52e1'

  url "http://dldir1.qq.com/invc/tt/QQBrowser.#{version.sub(%r{^.*\.},'')}.dmg"
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
