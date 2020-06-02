cask 'altair-graphql-client' do
  version '2.4.9'
  sha256 '6fa88f57759f1ce0f7dce12adbc5f6ed93a92d5c494420f784603d45db6a1d21'

  # github.com/imolorhe/altair/ was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip"
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
