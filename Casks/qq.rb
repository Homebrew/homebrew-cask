cask :v1 => 'qq' do
  version '4.0.0'
  sha256 'dff078f12e2cccc254c7a4f74f0f291d1168606616cdde443dd454603a2115cd'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  homepage 'http://im.qq.com/macqq/index.shtml'
  license :commercial

  app 'QQ.app'
end
