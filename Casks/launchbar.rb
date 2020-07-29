cask 'launchbar' do
  version '6.12'
  sha256 '04309c78523eb0fd4b27ca73c09b43f256935bc974b18bfff2d927bf84464199'

  url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  appcast "https://sw-update.obdev.at/update-feeds/launchbar-#{version.major}.plist"
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  auto_updates true

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Application Support/LaunchBar',
               '~/Library/Caches/at.obdev.LaunchBar',
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Saved Application State/at.obdev.LaunchBar.savedState',
             ]
end
