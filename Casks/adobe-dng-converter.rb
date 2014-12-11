cask :v1 => 'adobe-dng-converter' do
  version '8.6'
  sha256 '3bb43ca608b7e62727512c813b395ea46aad545f68f9323cc78c9c5f47145650'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Adobe DNG Converter.pkg'

  uninstall :pkgutil => 'com.adobe.adobeDngConverter*',
            :quit =>    'com.adobe.DNGConverter'
end
