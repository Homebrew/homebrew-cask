cask 'menuola' do
  version '2.0'
  sha256 'd97170adab805f1a52fef6c59287724783d80b5b23821dd97c0a85b4a72261dd'

  url "https://geocom.co.nz/downloads/Menuolav#{version.major}.dmg.zip"
  appcast 'https://www.geocom.co.nz/menuola.xml',
          checkpoint: 'f63f98d9f170a4b50412465aac5b1fffa599ca5a0ebfe9e6c95ada321c8211af'
  name 'Menuola'
  homepage 'https://www.geocom.co.nz'

  app 'Menuola.app'
end
