cask 'eagle' do
  version '9.4.1'
  sha256 '06edd58b1fbd830a1463f9d9622d27216b482c2ad8dd9fcfe25596b3c800c20c'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'http://eagle.autodesk.com/eagle/release-notes'
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
