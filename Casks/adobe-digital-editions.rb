class AdobeDigitalEditions < Cask
  version '3.0'
  sha256 '540d0fdeeddd1aea5cf31a105b5f31b1c838219c4cf9baddfc02d729c098bb45'

  url 'http://download.adobe.com/pub/adobe/digitaleditions/ADE_3.0_Installer.dmg'
  homepage 'http://www.adobe.com/pt/products/digital-editions.html'

  install 'Digital Editions 3.0 Installer.pkg'
  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
