cask 'launchbar' do
  if MacOS.version <= :mavericks
    version '6.9.7'
    sha256 'e1623c77a85857ec3191a82b8932909200f8d183bb654e9caa77e9c14afd7a63'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.11.1'
    sha256 'de761526614a14885cfb096c2e3b4d5440f45b73110fadce0e949c5ea6ef3fb8'

    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
    appcast "https://sw-update.obdev.at/update-feeds/launchbar-#{version.major}.plist"
  end

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
