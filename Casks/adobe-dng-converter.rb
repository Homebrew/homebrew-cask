cask 'adobe-dng-converter' do
  version '12.4'
  sha256 'fd0c4eea82b382e8543236fa0a1f16ca5d8e1687bdab436726dd70e494838503'

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
