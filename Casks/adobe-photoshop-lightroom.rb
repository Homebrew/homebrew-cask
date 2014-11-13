cask :v1 => 'adobe-photoshop-lightroom' do
  version '5.6'
  sha256 '794fa6b364985a6e3c830f78c9ad9c52c46208676bf01576976cbcfc818aa61a'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.to_i}.x/Lightroom_#{version.to_i}_LS11_mac_#{version.gsub('.','_')}.dmg"
  homepage 'http://www.adobe.com/products/photoshop-lightroom.html'
  license :unknown

  pkg "Adobe Photoshop Lightroom #{version.to_i}.pkg"

  uninstall :pkgutil => "com.adobe.Lightroom#{version.to_i}",
            :quit => "com.adobe.Lightroom#{version.to_i}",
            :delete => "/Applications/Adobe Photoshop Lightroom #{version.to_i}.app"
  zap       :delete => [
                        '~/Library/Application Support/Adobe/Lightroom',
                        "~/Library/Preferences/com.adobe.Lightroom#{version.to_i}.plist",
                       ]
end
