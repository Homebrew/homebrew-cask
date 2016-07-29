cask 'adobe-digital-editions' do
  version '4.5'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version}_Installer.dmg"
  name 'Adobe Digital Editions'
  homepage 'https://www.adobe.com/solutions/ebook/digital-editions.html'
  license :gratis

  pkg "Digital Editions #{version} Installer.pkg"

  uninstall pkgutil: 'com.adobe.adobedigitaleditions.app'
end
