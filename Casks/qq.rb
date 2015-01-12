cask :v1 => 'qq' do
  version '4.0.1'
  sha256 '9005c3c1019fa1217240cbae46de17fbd29ea03ef25603729638903ad13c331f'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'
end
