cask 'altair-graphql-client' do
  version '2.1.1'
  sha256 '227e9ec4c140b2f086e976ac48dc80a7cebf076144c97fd959892a223bc1d2b8'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom'
  name 'Altair GraphQL Client'
  homepage 'https://altair.sirmuel.design/'

  app 'Altair GraphQL Client.app'

  zap trash: [
               '~/Library/Application Support/altair',
               '~/Library/Preferences/com.electron.altair.helper.plist',
               '~/Library/Preferences/com.electron.altair.plist',
               '~/Library/Saved Application State/com.electron.altair.savedState',
             ]
end
