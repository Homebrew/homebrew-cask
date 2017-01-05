cask 'qq' do
  version '5.4.0'
  sha256 'b5f3df23ec7b7db1ffcd15e22fc2f8a217c9a943c828b084c059d769d767b3c1'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'https://im.qq.com/macqq/'

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap delete: [
                '~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2',
                '~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2',
                '~/Library/Application Scripts/com.tencent.qq',
                '~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2',
                '~/Library/Containers/FN2V63AD2J.com.tencent.localserver2',
                '~/Library/Containers/com.tencent.qq',
                '~/Library/Group Containers/FN2V63AD2J.com.tencent',
                '~/Library/Preferences/com.tencent.qq.plist',
                '~/Library/Saved Application State/com.tencent.qq.savedState',
              ]
end
