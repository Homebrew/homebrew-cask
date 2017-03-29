cask 'cartographica' do
  version '1.4'
  sha256 '8f8db101e6bfce04aaea71a70c3eef210fc12284ca26f963db883a2f62d86ebe'

  # cluetrust.com was verified as official when first introduced to the cask
  url 'https://www.cluetrust.com/Downloads/Cartographica.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          checkpoint: '7d9118c7b7c198a12f0cce60b50058e7cc0e261e9c79fb2cbc4a09b5d8801b9b'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'

  app 'Cartographica.app'

  zap delete: [
                '~/Library/Application Support/Cartographica',
                '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
              ]
end
