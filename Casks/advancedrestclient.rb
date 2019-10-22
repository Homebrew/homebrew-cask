cask 'advancedrestclient' do
  version '14.0.0'
  sha256 'c43864f23aa7fa60e16c6aca32dcf5f11d66cf2492eb2ca85bd899317f9bb4ca'

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
