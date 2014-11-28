cask :v1 => 'adobe-digital-editions' do
  version '4.0'
  sha256 '00b846565da5962993bf3d9f4e629764d439da8269e4c84da49b441fa48d0e86'

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version}_Installer.dmg"
  homepage 'http://www.adobe.com/pt/products/digital-editions.html'
  license :unknown

  pkg "Digital Editions #{version} Installer.pkg"

  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
