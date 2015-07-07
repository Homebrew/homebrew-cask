cask :v1 => 'cartographica' do
  version :latest
  sha256 :no_check

  # cluetrust.com is the official download host per the vendor homepage
  url 'https://www.cluetrust.com/Downloads/Cartographica.dmg'
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
