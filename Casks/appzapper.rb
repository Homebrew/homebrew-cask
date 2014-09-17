class Appzapper < Cask
  version :latest
  sha256 :no_check

  url 'http://www.appzapper.com/downloads/appzapper.dmg'
  appcast 'http://www.appzapper.com/az2appcast.xml'
  homepage 'http://www.appzapper.com/'

  app 'AppZapper.app'
end
