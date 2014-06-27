class Pins < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml'
  homepage 'http://pinsapp.com/'

  link 'Pins.app'
end
