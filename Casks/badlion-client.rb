cask 'badlion-client' do
  version '2.13.2'
  sha256 '6ba0f70fb07d8559c171b5682ed6a1c9f444909b5c790683da4a8a10b87c2dda'

  url "https://client-updates.badlion.net/Badlion%20Client-#{version}.dmg"
  appcast 'https://client-updates.badlion.net/latest-mac.yml'
  name 'Badlion Client'
  homepage 'https://www.badlion.net/'

  app 'Badlion Client.app'

  zap trash: [
               '~/Library/Caches/net.badlion.client',
               '~/Library/Caches/net.badlion.client.ShipIt',
               '~/Library/Application Support/Badlion Client',
             ]
end
