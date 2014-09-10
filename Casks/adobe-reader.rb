class AdobeReader < Cask
  version '11.0.07'
  sha256 '817a9f475f0a05b3b6d353eb10430769176506f6066c48b492dc13ff627b3a39'

  url 'http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.07/en_US/AdbeRdr11007_en_US.dmg'
  homepage 'http://www.adobe.com/products/reader.html'

  pkg 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => 'com.adobe.acrobat.reader.11007.*'
end
