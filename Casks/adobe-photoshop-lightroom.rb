class AdobePhotoshopLightroom < Cask
  version '5.5'
  sha256 '6b1949f0833d37a410c5e9dc54abd9595830c4818167a07c460c6d4d9d288f17'

  url 'http://download.adobe.com/pub/adobe/lightroom/mac/5.x/Lightroom_5_LS11_mac_5_5.dmg'
  homepage 'http://www.adobe.com/products/photoshop-lightroom.html'

  install 'Adobe Photoshop Lightroom 5.pkg'
  uninstall :pkgutil => 'com.adobe.Lightroom5',
            :quit => 'com.adobe.Lightroom5',
            :files => '/Applications/Adobe Photoshop Lightroom 5.app'
end
