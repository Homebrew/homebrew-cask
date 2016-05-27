cask 'adobe-dng-converter' do
  version '9.5.1'
  sha256 '4465231586b5a55f7cf1b56843ec7fb30f73a0f9aff177d0e9a65e951796a348'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall delete:  '/Applications/Adobe DNG Converter.app',
            pkgutil: 'com.adobe.adobeDngConverter*',
            quit:    'com.adobe.DNGConverter'
end
