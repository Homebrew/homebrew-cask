cask 'cartographica' do
  version '1.4.8'
  sha256 '82fed47a4da82dcb149d8337db219037e23389f359b8f0c5e24568126c1dea5d'

  # cluetrust.com was verified as official when first introduced to the cask
  url 'https://www.cluetrust.com/Downloads/Cartographica.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/Cartographica.xml',
          checkpoint: '4724e8450e080ac2e780cba94651b1ff312333a68d3682c48c6c2e76bc10d951'
  name 'Cartographica'
  homepage 'https://www.macgis.com/'

  app 'Cartographica.app'

  zap trash: [
               '~/Library/Application Support/Cartographica',
               '~/Library/Preferences/com.ClueTrust.Cartographica.plist',
             ]
end
