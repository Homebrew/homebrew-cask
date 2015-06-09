cask :v1 => 'baiduhi' do
  version '1.4.0.1'
  sha256 '1dffe0933902e5c49ed31762ecbd67bd2f11ba6af0fcf4ba7fcae0dd5bc52067'

  url "http://mac.im.baidu.com/machi_#{version}.dmg"
  name '百度Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
