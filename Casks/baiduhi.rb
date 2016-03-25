cask 'baiduhi' do
  version '1.6.0.0'
  sha256 '15de7fee8818b6ae9565a15e97fc0c3938041a129bc9cec1a359ddc8dc82590f'

  url "https://bs.baidu.com/app-res/mac/machi_#{version}.dmg"
  name 'Baidu Hi'
  name '百度 Hi'
  homepage 'https://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
