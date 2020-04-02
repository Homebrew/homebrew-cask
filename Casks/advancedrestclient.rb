cask 'advancedrestclient' do
  version '15.0.3'
  sha256 'ef175a1ac40d348b7c7be341d3d7963c79fdd716dca2a130d613d7ddc366b4e6'

  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-#{version}.dmg"
  appcast 'https://github.com/advanced-rest-client/arc-electron/releases.atom'
  name 'Advanced Rest Client'
  homepage 'https://github.com/advanced-rest-client/arc-electron'

  app 'AdvancedRestClient.app'

  zap trash: [
               '~/Library/Application Support/advanced-rest-client',
               '~/Library/Logs/AdvancedRestClient',
             ]
end
