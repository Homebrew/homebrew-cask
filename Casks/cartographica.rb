cask :v1 => 'cartographica' do
  version :latest
  sha256 :no_check

  url 'http://www.cluetrust.com/Downloads/Cartographica.dmg'
  homepage 'https://www.macgis.com/'
  license :commercial

  app 'Cartographica.app'

  zap :delete => [
                  '~/Library/Application Support/Cartographica',
                  '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
                 ]
end
