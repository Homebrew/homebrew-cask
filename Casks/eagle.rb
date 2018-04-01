cask 'eagle' do
  version '8.7.0'
  sha256 'c7e8cbfd9aad93fcf4c2aca3ddde1bcada7ed64c039ae0599e207b5804d5f2ff'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/eagle/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
