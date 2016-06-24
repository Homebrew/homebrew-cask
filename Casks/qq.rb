cask 'qq' do
  version '5.0.0'
  sha256 '520c3250ee330235949fffbd0ebb34338195ff9fa14d57e7e35b6d529faca239'

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
