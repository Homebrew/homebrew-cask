cask 'eagle' do
  version '8.3.1'
  sha256 'bbdc680032a379ba16abd9a181a8ea0879de6b4ec454afc0ace82b7573ccf692'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
