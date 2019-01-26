cask 'altair-graphql-client' do
  version '1.9.9'
  sha256 '635f3f902cf653cf9572db4a90dd6f4813fc6890c7e9578debc49b5439bc336e'

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
