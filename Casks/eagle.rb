cask 'eagle' do
  version '9.3.2'
  sha256 'afc01d63f5483a5cc7242e43a3723261f2bda2b35a667a766d6722ea55a4fadb'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'http://eagle.autodesk.com/eagle/release-notes'
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
