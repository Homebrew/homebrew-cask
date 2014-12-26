cask :v1 => 'qq' do
  version '4.0.0'
  sha256 'dc206b856dda0ef3db8420d7678ddaefafd1e6919a9dc3d3115fc926b20bce35'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'
end
