cask 'launchbar' do
  if MacOS.version <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.9.6'
    sha256 'c784dc1206a8707c1254577b71ab85834e92aeae0fe9adb5b9baf168f029b993'

    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
    appcast "https://sw-update.obdev.at/update-feeds/launchbar-#{version.major}.plist"
  end

  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Application Support/LaunchBar',
             ]
end
