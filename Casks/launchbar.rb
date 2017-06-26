cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.9'
    sha256 '45469a2ae467f20e8514be3a73765a7f52934fa388c3a69b048f2ed06bb6e026'
    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  appcast 'https://www.obdev.at/products/launchbar/releasenotes.html',
          checkpoint: '657976f1e78729091db9a49667493b1916d95ca0e0e0983f3b1b797028d23df3'
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap delete: [
                '~/Library/Preferences/at.obdev.LaunchBar.plist',
                '~/Library/Application Support/LaunchBar',
              ]
end
