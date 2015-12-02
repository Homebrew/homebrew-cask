cask :v1 => 'baiduhi' do
  version '1.6.0.0'
  sha256 '15de7fee8818b6ae9565a15e97fc0c3938041a129bc9cec1a359ddc8dc82590f'

  url "http://bs.baidu.com/app-res/mac/machi_#{version}.dmg"
  name '百度 Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
