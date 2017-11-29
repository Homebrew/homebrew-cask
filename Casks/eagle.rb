cask 'eagle' do
  version '8.4.3'
  sha256 '9b7375112f961419168a61b0ac34b49492765e3bdeee24118340e5ac9fa720a1'

  # circuits.io was verified as official when first introduced to the cask
  url "https://eagle-updates.circuits.io/downloads/#{version.tr('.', '_')}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
