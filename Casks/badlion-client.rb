cask 'badlion-client' do
  version '2.11.2'
  sha256 '50cb944cfb1e9a2f39f5c15a05634601423727f9e8a7259d203e308e15886f5e'

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
