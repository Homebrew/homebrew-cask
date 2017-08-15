cask 'eagle' do
  version '8.3.0'
  sha256 '16cd67c387659e69abd650c8ee8a24a8c2ab5fbcd3e9ec490f5e275824fe3634'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
