cask :v1 => 'baiduhi' do
  version :latest
  sha256 :no_check

  url 'http://im.baidu.com/download/mac/machi_1.3.0.5.dmg'
  name '百度Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
