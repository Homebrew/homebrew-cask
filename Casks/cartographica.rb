cask 'cartographica' do
  version '1.4.7'
  sha256 '12a559c076cca3f4c0e3b59edf79a7f0ddec38d140ded7016c31a4fcc59ce6cc'

  # cluetrust.com was verified as official when first introduced to the cask
  url 'https://www.cluetrust.com/Downloads/Cartographica.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          checkpoint: '9f4ea3a33cf21d744dc3d25f7ab12f7a2dfa4216c2dd389ac8511e629e07b85f'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'

  app 'Cartographica.app'

  zap delete: [
                '~/Library/Application Support/Cartographica',
                '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
              ]
end
