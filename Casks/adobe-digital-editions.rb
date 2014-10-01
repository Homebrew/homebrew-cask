class AdobeDigitalEditions < Cask
  version '3.0'
  sha256 '540d0fdeeddd1aea5cf31a105b5f31b1c838219c4cf9baddfc02d729c098bb45'

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version}_Installer.dmg"
  homepage 'http://www.adobe.com/pt/products/digital-editions.html'
  license :unknown

  pkg "Digital Editions #{version} Installer.pkg"
  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
