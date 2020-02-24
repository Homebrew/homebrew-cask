cask 'advancedrestclient' do
  version '15.0.1'
  sha256 'db4edac03d8613df22026e30df5038b6e59f0b03809942b939bfed3ea633a93d'

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
