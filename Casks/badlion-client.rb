cask 'badlion-client' do
  version '2.12.0'
  sha256 '78b7e8af31d71e1e8921b7c4da24d9835c33edd6c5f46af91c401616a6d77695'

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
