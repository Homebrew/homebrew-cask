cask 'eagle' do
  version '9.2.0'
  sha256 'a9a3f44ab5e9087c7a351ebb458b9c9a92ca4d288ca6d5cd8d6394da6eb67a13'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
