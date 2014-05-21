class AdobePhotoshopLightroom < Cask
  url 'http://download.adobe.com/pub/adobe/lightroom/mac/5.x/Lightroom_5_LS11_mac_5_4.dmg'
  homepage 'http://www.adobe.com/products/photoshop-lightroom.html'
  version '5.4'
  sha256 'd935735cac3cae088568a1fb0f3fd57a15ceb55c4daa4d64659fff002e339cee'
  install 'Adobe Photoshop Lightroom 5.pkg'
  uninstall :pkgutil => 'com.adobe.Lightroom5',
            :quit => 'com.adobe.Lightroom5',
            :files => '/Applications/Adobe Photoshop Lightroom 5.app'
end
