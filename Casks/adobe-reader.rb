class AdobeReader < Cask
  url 'http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.06/en_US/AdbeRdr11006_en_US.dmg'
  homepage 'http://www.adobe.com/products/reader.html'
  version '11.0.06'
  sha256 '5d057ea44692036d6b7b2eb3b7f906baac23aca95c1b417535a33527a252929a'
  install 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => 'com.adobe.acrobat.reader.11006.*'
end
