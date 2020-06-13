cask 'adobe-dng-converter' do
  version '12.3'
  sha256 '1cfac471868ad6032d53207dfddf92d6f2f2e8ec2aeb2a0d1b2a9b016956cea8'

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
