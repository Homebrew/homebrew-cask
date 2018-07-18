cask 'eagle' do
  version '9.1.1'
  sha256 '17217a0a95915f066246bfb7415307e14ba2c58f482aaaba24259e7d1f8df512'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
