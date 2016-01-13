cask 'cartographica' do
  version '1.4.6,610'
  sha256 '8f8db101e6bfce04aaea71a70c3eef210fc12284ca26f963db883a2f62d86ebe'

  # cluetrust.com is the official download host per the vendor homepage
  url "https://www.cluetrust.com/Downloads/Cartographica_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          :sha256 => 'bf00baba233fdebc0fa92fab2431fe15e5142f6e0cfc5a6af4188c98215b2568'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'
  license :commercial

  app 'Cartographica.app'

  zap :delete => [
                   '~/Library/Application Support/Cartographica',
                   '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
                 ]
end
