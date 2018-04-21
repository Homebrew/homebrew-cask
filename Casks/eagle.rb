cask 'eagle' do
  version '9.0.0'
  sha256 'eeefc304222c0dd3f454c069d2d8da8a78b643bac6193fc9cf5bf3567bce95d0'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/eagle/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
