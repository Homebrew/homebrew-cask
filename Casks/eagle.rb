cask 'eagle' do
  version '8.0'
  sha256 'bc63e9a3f84fe17ba86bef179f110c77583d19fc0d25876aa7c4c67b0fe3ea61'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'http://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle',
            delete:  "/Applications/EAGLE-#{version}"
end
