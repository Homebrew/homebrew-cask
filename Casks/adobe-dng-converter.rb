cask 'adobe-dng-converter' do
  if MacOS.version <= :mavericks
    version '9.6.1'
    sha256 '087eac5026667e4e6e3c156fd13243c9ea00f6c0238cbbb94d3099ae8772603f'
  else
    version '12.1'
    sha256 'ed087a01377559abe0f38696a8b8d884c3a5680c378c332ea3e05b32d89fd7f7'
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
