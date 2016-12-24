cask 'adobe-dng-converter' do
  version '9.8'
  sha256 'cc556216e5a14f77d249bd9c43c1e9ce1465945b963ba1e5f837097e1d41dbc6'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall delete:  '/Applications/Adobe DNG Converter.app',
            pkgutil: 'com.adobe.adobeDngConverter*',
            quit:    'com.adobe.DNGConverter'
end
