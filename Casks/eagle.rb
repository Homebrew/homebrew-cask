cask 'eagle' do
  version '8.7.1'
  sha256 '0beb43e0f615f336a9efc30f74f751ebb331a2b937d82fffb9abfe3445f5f349'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/eagle/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
