cask 'cartographica' do
  version '1.4.6,610'
  sha256 '8f8db101e6bfce04aaea71a70c3eef210fc12284ca26f963db883a2f62d86ebe'

  # cluetrust.com was verified as official when first introduced to the cask
  url "https://www.cluetrust.com/Downloads/Cartographica_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          checkpoint: '7e85531c1c261a52989a7c08dc56e3fd2bb55c4d7627ed3cf6154dc0bab316ec'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'
  license :commercial

  app 'Cartographica.app'

  zap delete: [
                '~/Library/Application Support/Cartographica',
                '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
              ]
end
