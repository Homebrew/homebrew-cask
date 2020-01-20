cask 'badlion-client' do
  version '2.11.1'
  sha256 'bcac8e10b2adde731ccfc2a32ec4703c80ba2ac99282b72331b02ddcda49ae81'

  url "https://client-updates.badlion.net/Badlion%20Client-#{version}.dmg"
  name 'Badlion Client'
  homepage 'https://www.badlion.net/'

  app 'Badlion Client.app'

  zap trash: [
               '~/Library/Caches/net.badlion.client',
               '~/Library/Caches/net.badlion.client.ShipIt',
               '~/Library/Application Support/Badlion Client',
             ]
end
