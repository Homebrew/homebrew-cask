cask :v1 => 'adobe-digital-editions' do
  version '4.0'
  sha256 '359f62e8fc2d89d6aa411fc4ed69a5be9e19d433226640b3ddbaec35e66f646c'

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version}_Installer.dmg"
  homepage 'http://www.adobe.com/pt/products/digital-editions.html'
  license :unknown

  pkg "Digital Editions #{version} Installer.pkg"
  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
