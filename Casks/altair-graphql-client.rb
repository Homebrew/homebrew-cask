cask 'altair-graphql-client' do
  version '2.4.10'
  sha256 '8b092212e70a1fa6aefb99eb165510e09e6f1ec9d58b35938eead7a694e4b2ff'

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
