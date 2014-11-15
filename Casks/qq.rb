cask :v1 => 'qq' do
  version '3.1.2'
  sha256 'e74ec441a95d36e22e5e78a7ecc5a3d0d02cf749b413f88198ff74bc3bb85da0'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  homepage 'http://im.qq.com/macqq/index.shtml'
  license :unknown

  app 'QQ.app'
end
