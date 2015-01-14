cask :v1 => 'launchbar' do

  if MacOS.release <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "http://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.1.6'
    sha256 '7ae2d6fdb9d12817cd1ed49cfd35606cb7f3a3162c369108555ee8adc2940335'
    url "http://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  homepage 'http://www.obdev.at/products/launchbar/'
  license :commercial

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
