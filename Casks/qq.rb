cask 'qq' do
  version '4.1.0'
  sha256 'e36e685b9a00132d1b85f335fdcfafb651fed05e7c29cf90330bf1f8655168b1'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'

  uninstall :quit => 'com.tencent.qq'

  zap :delete => [
                   '~/Library/Containers/com.tencent.qq',
                   '~/Library/Containers/com.tencent.localserver',
                   '~/Library/Containers/com.tencent.ScreenCapture',
                 ]
end
