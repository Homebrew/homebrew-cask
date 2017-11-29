cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.9.2'
    sha256 'bd8578c7a1a2f90249d4a2325d019810c69457857f584b3b25377929c2b010dc'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/launchbar/releasenotes.html',
          checkpoint: '36a20250b63dfe889a40228776d34cf337c516734cb23af0a1ac6ebdd53227f2'
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Application Support/LaunchBar',
             ]
end
