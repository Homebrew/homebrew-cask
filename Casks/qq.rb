cask :v1 => 'qq' do
  version '4.0.4'
  sha256 '8d55ab564ead24e451b21f20f04b7bfdafda5d3273276ae5710b9a240f2e6e8f'

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
