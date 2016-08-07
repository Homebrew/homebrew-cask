cask 'adobe-dng-converter' do
  version '9.6.1'
  sha256 '087eac5026667e4e6e3c156fd13243c9ea00f6c0238cbbb94d3099ae8772603f'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall delete:  '/Applications/Adobe DNG Converter.app',
            pkgutil: 'com.adobe.adobeDngConverter*',
            quit:    'com.adobe.DNGConverter'
end
