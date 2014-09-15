class Icefloor < Cask
  version '2.0.2'
  sha256 'b326bab20c022c12be9ed01c3aa0e5f072853ce7dc5fb756bddebc2c3abddf64'

  url 'http://www.hanynet.com/icefloor-2.0.2.zip'
  homepage 'http://www.hanynet.com/icefloor/'

  nested_container 'IceFloor 2.0.2.dmg'
  app 'IceFloor.app'
end
