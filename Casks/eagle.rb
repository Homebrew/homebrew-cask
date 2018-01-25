cask 'eagle' do
  version '8.5.2'
  sha256 'bccdee6fb322d87372374ede5917ef1ab03d8b444c0b7aa1d4bab74cd4eabfec'

  url "https://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
