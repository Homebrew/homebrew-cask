cask 'eagle' do
  version '8.0.2'
  sha256 '4fea0669d2eafc39dcdb60ca60d7fa2763970f5efd358fd85458b4a0699bdd7a'

  url "http://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'CadSoft EAGLE'
  homepage 'http://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle',
            delete:  "/Applications/EAGLE-#{version}"
end
