class Launchbar < Cask
  version '6.1.1'
  sha256 '0b2afba286e8038fd7510e0e69b173984f547ddb8e3fa8bdd568115cf53cde98'

  url "http://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  homepage 'http://www.obdev.at/products/launchbar/'

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
