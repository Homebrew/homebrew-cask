cask 'qq' do
  version '6.1.0'
  sha256 'fa00e40bfab8c9722091c5b5748e357bb99d7072e75f5b996750d5f6645f20b8'

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
