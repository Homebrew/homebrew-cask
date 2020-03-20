cask 'advancedrestclient' do
  version '15.0.2'
  sha256 '23ff30cf6ed7d6002d77ce70de5a3eb619b31639aa861ea316ab53aa94f973b1'

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
