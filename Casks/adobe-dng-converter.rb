cask 'adobe-dng-converter' do
  if MacOS.version <= :mavericks
    version '9.6.1'
    sha256 '087eac5026667e4e6e3c156fd13243c9ea00f6c0238cbbb94d3099ae8772603f'
  else
    version '11.2'
    sha256 'add5f4d40f0bd5963ea2e01c88f05b1c5a8f3c5a1eec519971b75f061fb0fbcb'
  end

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name 'Adobe Camera Raw and DNG Converter'
  homepage 'https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh'

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
                       'com.adobe.CameraRawProfiles',
                       'com.adobe.DNGConverter',
                     ],
            quit:    'com.adobe.DNGConverter'
end
