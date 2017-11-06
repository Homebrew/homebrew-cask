cask 'eagle' do
  version '8.4.1'
  sha256 '99f3ffed27fec38b140213c922d486ca28f5ccf06db424c5c3a21c681bbda193'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
