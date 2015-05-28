cask :v1 => 'baiduhi' do
  version '1.3.0.5'
  sha256 '372229bee83fda1e392624455cac7f94cc4e1d9ed00f80344f3fae037f442542'

  url "http://im.baidu.com/download/mac/machi_#{version}.dmg"
  name '百度Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
