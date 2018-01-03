cask 'eagle' do
  version '8.5.1'
  sha256 '04e9f900d75e9c13cf4b6d4a6f34dfec8d6f71fb6bb5e845c329a35a79af4870'

  # eagle-updates.circuits.io was verified as official when first introduced to the cask
  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
