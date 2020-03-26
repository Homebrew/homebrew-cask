cask 'badlion-client' do
  version '2.13.0'
  sha256 'd026df460b053182166a3542498c0c61fe2134435437d301b819d16e9a6c47e7'

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
