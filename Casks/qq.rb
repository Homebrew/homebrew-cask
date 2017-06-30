cask 'qq' do
  version '6.0.0'
  sha256 '5a7176bcad98d375ae2bf05dba3d8326c7fdd540b2da0c0bc34bc9c2cfe71a53'

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
