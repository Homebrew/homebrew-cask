class AdobePhotoshopLightroom < Cask
  version '5.6'
  sha256 '794fa6b364985a6e3c830f78c9ad9c52c46208676bf01576976cbcfc818aa61a'

  url 'http://download.adobe.com/pub/adobe/lightroom/mac/5.x/Lightroom_5_LS11_mac_5_6.dmg'
  homepage 'http://www.adobe.com/products/photoshop-lightroom.html'
  license :unknown

  pkg 'Adobe Photoshop Lightroom 5.pkg'

  uninstall :pkgutil => 'com.adobe.Lightroom5',
            :quit => 'com.adobe.Lightroom5',
            :delete => '/Applications/Adobe Photoshop Lightroom 5.app'
  zap       :delete => [
                        '~/Library/Application Support/Adobe/Lightroom',
                        '~/Library/Preferences/com.adobe.Lightroom2.plist',
                        '~/Library/Preferences/com.adobe.Lightroom3.plist',
                        '~/Library/Preferences/com.adobe.Lightroom4.plist',
                        '~/Library/Preferences/com.adobe.Lightroom5.plist',
                       ]
end
