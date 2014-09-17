class Dealalert < Cask
  version :latest
  sha256 :no_check

  url 'http://littlefin.com/downloads/dealalert.zip'
  appcast 'http://www.littlefin.com/downloads/dealalert.xml'
  homepage 'http://dealalertapp.com/'

  app 'DealAlert.app'
end
