class Launchbar < Cask
  version '6.1'
  sha256 '0770e0961e97ddd36c8d0b62dce44296f159daecf69b618986e0974795dc5479'

  url "http://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  homepage 'http://www.obdev.at/products/launchbar/'

  app 'LaunchBar.app'
  zap :files => [
                 '~/Library/Preferences/at.obdev.LaunchBar.plist',
                 '~/Library/Application Support/LaunchBar/Configuration.plist',
                 '~/Library/Application Support/LaunchBar/CustomShortcuts.plist',
                 # todo unsure if these contain user-created content
                 # '~/Library/Application Support/LaunchBar/Actions',
                 # '~/Library/Application Support/LaunchBar/Snippets',
                ]
end
