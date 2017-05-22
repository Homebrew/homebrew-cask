cask 'eagle' do
  version '8.2.0'
  sha256 '61d75f7cb8f0746c7d3b340f85bd3dbabcff71ab56af2d95002b5c70f46813f1'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
