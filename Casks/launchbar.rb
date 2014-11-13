cask :v1 => 'launchbar' do
  version '6.1.3'
  sha256 'e5d52b87fa3c5c72062a3115cf300618e9a60d99958160a4c35a0b9365db5c43'

  url "http://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  homepage 'http://www.obdev.at/products/launchbar/'
  license :unknown

  app 'LaunchBar.app'
  zap :delete => [
                  '~/Library/Preferences/at.obdev.LaunchBar.plist',
                  '~/Library/Application Support/LaunchBar/Configuration.plist',
                  '~/Library/Application Support/LaunchBar/CustomShortcuts.plist',
                  # todo unsure if these contain user-created content
                  # '~/Library/Application Support/LaunchBar/Actions',
                  # '~/Library/Application Support/LaunchBar/Snippets',
                 ]
end
