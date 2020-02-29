cask 'adobe-dng-converter' do
  if MacOS.version <= :mavericks
    version '9.6.1'
    sha256 '087eac5026667e4e6e3c156fd13243c9ea00f6c0238cbbb94d3099ae8772603f'
  else
    version '12.2'
    sha256 'cc2962dd051c29bb2c4737a831477be5b0f35531f0fbc1ea2c10c2449201f0f7'
  end

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  appcast 'https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh'
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh'

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
                       'com.adobe.CameraRawProfiles',
                       'com.adobe.DNGConverter',
                     ],
            quit:    'com.adobe.DNGConverter'
end
