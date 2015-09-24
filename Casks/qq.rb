cask :v1 => 'qq' do
  version '4.0.4'
  sha256 'c0db5ee1d19532e8be16a5e6b3e57e09296ce8677f9b2728c7740a38217ff307'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'

  uninstall :quit => 'com.tencent.qq'

  zap :delete => [
                  '~/Library/Containers/com.tencent.qq',
                  '~/Library/Containers/com.tencent.localserver',
                  '~/Library/Containers/com.tencent.ScreenCapture'
                 ]
end
