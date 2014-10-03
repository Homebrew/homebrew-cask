class Launchbar < Cask
  version '6.1.2'
  sha256 'adbc69a93184597f5fe5b191d0b747a74d95d64cf67c20bfece4aa8917ecb098'

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
