cask 'cartographica' do
  version '1.4.9'
  sha256 '1a24dc0cf71c7f31ae4e663de6101c4e1b9083508a3fa3d2a9c575ec97988a47'

  # cluetrust.com was verified as official when first introduced to the cask
  url 'https://www.cluetrust.com/Downloads/Cartographica.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'

  app 'Cartographica.app'

  zap trash: [
               '~/Library/Application Support/Cartographica',
               '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
             ]
end
