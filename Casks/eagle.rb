cask 'eagle' do
  version '8.5.1'
  sha256 '04e9f900d75e9c13cf4b6d4a6f34dfec8d6f71fb6bb5e845c329a35a79af4870'

  # eagle-updates.circuits.io was verified as official when first introduced to the cask
  url "https://eagle-updates.circuits.io/downloads/#{version.split('.').join('_')}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'http://eagle.autodesk.com/eagle/release-notes',
          checkpoint: 'e44c3a72240f3a910f73f6d1900317d9d742844187610d94d5e47df00072b286'
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
