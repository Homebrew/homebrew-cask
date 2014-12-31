cask :v1 => 'qq' do
  version '4.0.0'
  sha256 '91a6a5f62d9224fec1a4cc53db1855ecc1c73444483fc0efd0fbfcf909ba7ac6'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'
end
