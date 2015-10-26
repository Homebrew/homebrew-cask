cask :v1 => 'baiduhi' do
  version :latest
  sha256 :no_check

  url 'http://im.baidu.com/download/machi_setup.dmg'
  name '百度 Hi'
  name 'Baidu Hi'
  homepage 'http://im.baidu.com/'
  license :gratis

  app '百度Hi.app'
end
