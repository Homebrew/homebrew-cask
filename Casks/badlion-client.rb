cask 'badlion-client' do
  version '2.15.0'
  sha256 '06d22a4dac19cdbfd86ed151585d66a07499d2903acd6c40f6cdb2dbaa3904df'

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
