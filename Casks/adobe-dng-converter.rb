cask :v1 => 'adobe-dng-converter' do
  version '9.1'
  sha256 '5c6b29cc1a1c98def767fdd99d5e82ba118d7902aa31cab4c207ea058cc65187'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.gsub('.', '_')}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.gsub('.', '_')}.pkg"

  uninstall :delete => '/Applications/Adobe DNG Converter.app',
            :pkgutil => 'com.adobe.adobeDngConverter*',
            :quit =>    'com.adobe.DNGConverter'
end
