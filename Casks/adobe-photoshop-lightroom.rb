cask :v1 => 'adobe-photoshop-lightroom' do
  version '5.7.1'
  sha256 '155a91e2c90927a05ccaa244a99fed4784fa7cf26d08c634f5f111629f6b0418'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.to_i}.x/Lightroom_#{version.to_i}_LS11_mac_#{version.gsub('.','_')}.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'
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
