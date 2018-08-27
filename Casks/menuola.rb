cask 'menuola' do
  version '2.0'
  sha256 'd97170adab805f1a52fef6c59287724783d80b5b23821dd97c0a85b4a72261dd'

  url "https://geocom.co.nz/downloads/Menuolav#{version.major}.dmg.zip"
  appcast 'https://www.geocom.co.nz/menuola.xml'
  name 'Menuola'
  homepage 'https://www.geocom.co.nz/'

  app 'Menuola.app'
end
