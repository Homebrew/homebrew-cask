cask 'eagle' do
  version '9.3.0'
  sha256 '10529ffe8b2b7681f873c1e3dc15d88319cf5d4a82bde6da4dab036402151476'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
