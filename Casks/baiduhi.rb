cask :v1 => 'baiduhi' do
  version '1.5.0.1'
  sha256 'ade49453de3778bfe063b853c5873b3a97798ff4917d04624efee39a99782199'

  url "http://mac.im.baidu.com/machi_#{version}.dmg"
  name '百度Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
