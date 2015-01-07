cask :v1 => 'adobe-digital-editions' do
  version '4.0'
  sha256 :no_check

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version}_Installer.dmg"
  homepage 'http://www.adobe.com/pt/products/digital-editions.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "Digital Editions #{version} Installer.pkg"

  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
