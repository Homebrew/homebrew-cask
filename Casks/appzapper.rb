class Appzapper < Cask
  url 'http://www.appzapper.com/downloads/appzapper.dmg'
  appcast 'http://www.appzapper.com/az2appcast.xml'
  homepage 'http://www.appzapper.com/'
  version 'latest'
  sha256 :no_check
  link 'AppZapper.app'
end
