cask :v1 => 'adobe-photoshop-lightroom' do
  version '5.7'
  sha256 'cb997a526ebf6e338896d21f48b1037e44009cc67d1cef789109d93b112679ac'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.to_i}.x/Lightroom_#{version.to_i}_LS11_mac_#{version.gsub('.','_')}.dmg"
  homepage 'http://www.adobe.com/products/photoshop-lightroom.html'
  license :commercial

  pkg "Adobe Photoshop Lightroom #{version.to_i}.pkg"

  uninstall :pkgutil => "com.adobe.Lightroom#{version.to_i}",
            :quit => "com.adobe.Lightroom#{version.to_i}",
            :delete => "/Applications/Adobe Photoshop Lightroom #{version.to_i}.app"
  zap       :delete => [
                        '~/Library/Application Support/Adobe/Lightroom',
                        "~/Library/Preferences/com.adobe.Lightroom#{version.to_i}.plist",
                       ]
end
