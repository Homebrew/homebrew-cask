cask 'adobe-dng-converter' do
  if MacOS.version <= :mountain_lion
    version '9.5.1'
    sha256 '4465231586b5a55f7cf1b56843ec7fb30f73a0f9aff177d0e9a65e951796a348'
  elsif MacOS.version <= :mavericks
    version '9.6.1'
    sha256 '087eac5026667e4e6e3c156fd13243c9ea00f6c0238cbbb94d3099ae8772603f'
  else
    version '9.8'
    sha256 'cc556216e5a14f77d249bd9c43c1e9ce1465945b963ba1e5f837097e1d41dbc6'
  end

  url "http://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh'

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall delete:  '/Applications/Adobe DNG Converter.app',
            pkgutil: 'com.adobe.adobeDngConverter*',
            quit:    'com.adobe.DNGConverter'
end
