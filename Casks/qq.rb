cask :v1 => 'qq' do
  version '4.0.5'
  sha256 '199578f64a201a81a318231429bc4402c6dd5e0a083d27fe3aa8ca2a05bd99f0'

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
