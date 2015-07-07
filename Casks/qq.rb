cask :v1 => 'qq' do
  version '4.0.3'
  sha256 '1ef5d338aaae00c56a35c4deb1b34ac240b742b7f421f8e7f16d4934c7c34988'

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
