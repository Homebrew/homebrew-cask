class AdobeReader < Cask
  url 'http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.06/en_US/AdbeRdr11006_en_US.dmg'
  homepage 'http://www.adobe.com/products/reader.html'
  version '11.0.06'
  sha1 '3d1b7a9a931e587ecdddedce163e6458945844fd'
  install 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => 'com.adobe.acrobat.reader.11006.*'
end
