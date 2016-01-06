cask 'cartographica' do
  version '1.4.6,610'
  sha256 '8f8db101e6bfce04aaea71a70c3eef210fc12284ca26f963db883a2f62d86ebe'

  # cluetrust.com is the official download host per the vendor homepage
  url "https://www.cluetrust.com/Downloads/Cartographica_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          :sha256 => '836d6694d66c60a7c151b0859f59532d9ebc2803030f7bd6d05f04c2faea5deb'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'
  license :commercial

  app 'Cartographica.app'

  zap :delete => [
                   '~/Library/Application Support/Cartographica',
                   '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
                 ]
end
