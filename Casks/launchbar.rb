cask :v1 => 'launchbar' do
  version '6.1.5'
  sha256 '19e226f46e06efac9c294f5940ddf69fefe353bc2705f987d1a301fa6c0e2781'

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
