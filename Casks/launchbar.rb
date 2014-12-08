cask :v1 => 'launchbar' do

  if MacOS.version < :mavericks
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
  else
    version '6.1.5'
    sha256 '19e226f46e06efac9c294f5940ddf69fefe353bc2705f987d1a301fa6c0e2781'
  end

  if MacOS.version < :mavericks
    url "http://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    url "http://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

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
