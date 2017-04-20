cask 'eagle' do
  version '8.1.0'
  sha256 'a3abd48794e545b51925f2bce5f5a81303f7917c97c2749d9b0e23f351901d01'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'http://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
