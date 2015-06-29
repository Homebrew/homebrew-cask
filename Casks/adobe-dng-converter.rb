cask :v1 => 'adobe-dng-converter' do
  version '9.0'
  sha256 'db3b25518c0f93af021bdec599c25f55924403b5199c5dfb92e9e47558c614b5'

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.gsub('.', '_')}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://www.adobe.com/support/downloads/product.jsp?product=106&platform=Macintosh'
  license :gratis

  pkg "DNGConverter_#{version.gsub('.', '_')}.pkg"

  uninstall :delete => '/Applications/Adobe DNG Converter.app',
            :pkgutil => 'com.adobe.adobeDngConverter*',
            :quit =>    'com.adobe.DNGConverter'
end
