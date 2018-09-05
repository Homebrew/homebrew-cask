cask 'qq' do
  version '6.5.0'
  sha256 'df73a92dc4a8e2101aa716f824ba86fb381eea57408b52e3de98deb020667df7'

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'https://im.qq.com/macqq/'

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap trash: [
               '~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2',
               '~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2',
               '~/Library/Application Scripts/com.tencent.qq',
               '~/Library/Caches/com.tencent.qq',
               '~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2',
               '~/Library/Containers/FN2V63AD2J.com.tencent.localserver2',
               '~/Library/Containers/com.tencent.qq',
               '~/Library/Group Containers/FN2V63AD2J.com.tencent',
               '~/Library/Preferences/com.tencent.qq.plist',
               '~/Library/Saved Application State/com.tencent.qq.savedState',
               '~/Library/WebKit/com.tencent.qq',
             ]
end
