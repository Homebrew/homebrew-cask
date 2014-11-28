cask :v1 => 'img2icns' do
  version :latest
  sha256 :no_check

  url 'http://static.shinyfrog.net/downloads/image2icon/Img2icns.zip'
  appcast 'http://store.shinyfrog.net/appcast/img2icns.xml'
  homepage 'http://www.img2icnsapp.com/'
  license :unknown

  app 'Img2icns.app'
end
