cask 'qq' do
  version '4.1.1'
  sha256 '8485af99fc58ce9f8d70d536dd3e4d187f0bcce0f0902d8242c7a8665065f96c'

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
