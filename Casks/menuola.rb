class Menuola < Cask
  version '2.0'
  sha256 'd97170adab805f1a52fef6c59287724783d80b5b23821dd97c0a85b4a72261dd'

  url 'http://geocom.co.nz/downloads/Menuolav2.dmg.zip'
  appcast 'http://www.geocom.co.nz/menuola.xml'
  homepage 'http://www.geocom.co.nz'

  nested_container 'Menuola.dmg'
  app 'Menuola.app'
end
