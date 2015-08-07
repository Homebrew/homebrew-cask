cask :v1 => 'adobe-dng-converter' do
  version '9.1.1'
  sha256 'c48ad14fe396f2bba0bdd028c4a0be76458c7076fa5d36822943ce84fbe20e1d'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.gsub('.', '_')}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.gsub('.', '_')}.pkg"

  uninstall :delete => '/Applications/Adobe DNG Converter.app',
            :pkgutil => 'com.adobe.adobeDngConverter*',
            :quit =>    'com.adobe.DNGConverter'
end
