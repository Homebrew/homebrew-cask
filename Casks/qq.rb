cask 'qq' do
  version '5.3.1'
  sha256 'bcdae2d041cb40f29597f90c075a585e87ff0254b1885f21e5d2f57962606dd5'

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
