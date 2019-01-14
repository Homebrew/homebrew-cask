cask 'launchbar' do
  if MacOS.version <= :mavericks
    version '6.9.7'
    sha256 'e1623c77a85857ec3191a82b8932909200f8d183bb654e9caa77e9c14afd7a63'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    version '6.10'
    sha256 '481e0a490737317b75031c57d69d9a6f031d6ad09440e32bc341ddb4b46e1e70'

    url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
    appcast "https://sw-update.obdev.at/update-feeds/launchbar-#{version.major}.plist"
  end

  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/index.html'

  app 'LaunchBar.app'

  zap trash: [
               '~/Library/Application Support/LaunchBar',
               '~/Library/Caches/at.obdev.LaunchBar',
               '~/Library/Preferences/at.obdev.LaunchBar.plist',
               '~/Library/Saved Application State/at.obdev.LaunchBar.savedState',
             ]
end
