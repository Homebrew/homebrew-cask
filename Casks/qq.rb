cask 'qq' do
  version '5.1.1'
  sha256 '7cfbe16b32399b86fef4daf50bbadb481ce12eab26c56ba4db347591d42a7e18'

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
