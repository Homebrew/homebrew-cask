cask 'qq' do
  version '6.0.1'
  sha256 '7fa5170b4919543ae4ce802fd9e851cf7e58d37727e5072e6dea0f49a538a39e'

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'https://im.qq.com/macqq/'

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap delete: [
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
