cask :v1 => 'cartographica' do
  version '1.4.6_610'
  sha256 '8f8db101e6bfce04aaea71a70c3eef210fc12284ca26f963db883a2f62d86ebe'

  # cluetrust.com is the official download host per the vendor homepage
  url "https://www.cluetrust.com/Downloads/Cartographica_#{version.sub(%r{.*_},'')}.dmg"
  name 'Cartographica'
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          :sha256 => '9bb9075d8da457886cb86043d4807cbdd210e9f6c883f99ade7898911f90dd35'
  homepage 'https://www.macgis.com/'
  license :commercial

  app 'Cartographica.app'

  zap :delete => [
                  '~/Library/Application Support/Cartographica',
                  '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
                 ]
end
