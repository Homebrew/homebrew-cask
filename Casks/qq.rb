cask 'qq' do
  version '5.1.2'
  sha256 'd642a2d5d7856979f079ed4ba132ed69b985df74f6a447b1b1fea73dcbb214c2'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'https://im.qq.com/macqq/'

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap delete: [
                '~/Library/Containers/com.tencent.qq',
                '~/Library/Containers/com.tencent.localserver',
                '~/Library/Containers/com.tencent.ScreenCapture',
              ]
end
