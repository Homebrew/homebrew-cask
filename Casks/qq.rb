cask 'qq' do
  version '5.1.0'
  sha256 'd5b1cb5b5885aa265e8b758fb800ec8fd516076cb5346081fa462bdf241e028b'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap delete: [
                '~/Library/Containers/com.tencent.qq',
                '~/Library/Containers/com.tencent.localserver',
                '~/Library/Containers/com.tencent.ScreenCapture',
              ]
end
