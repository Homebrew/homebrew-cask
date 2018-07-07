cask 'eagle' do
  version '9.1.0'
  sha256 '7d413645de2b556dd9e72164d380eeaf53612a5997423a610983be08b6013823'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
