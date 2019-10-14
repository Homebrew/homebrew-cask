cask 'eagle' do
  version '9.5.1'
  sha256 '3a9bb291ea87309a01d414e7eb0d86373f97cf7cb3eaf626c88762777f26bca2'

  url "https://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.autodesk.com/eagle-download-mac'
  name 'Autodesk EAGLE'
  homepage 'https://www.autodesk.com/products/eagle/overview'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
