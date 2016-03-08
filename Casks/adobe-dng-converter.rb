cask 'adobe-dng-converter' do
  version '9.4'
  sha256 '49200b8a456b2480c112a3b82a433cddeafed432448a1be6242c0d7447716862'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall delete:  '/Applications/Adobe DNG Converter.app',
            pkgutil: 'com.adobe.adobeDngConverter*',
            quit:    'com.adobe.DNGConverter'
end
