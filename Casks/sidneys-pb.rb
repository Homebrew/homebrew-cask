cask 'sidneys-pb' do
  version '7.0.0'
  sha256 '35ea8c3f03ddea43999dc68a6a3fb026d43037f9c4aa534fd8db4fd6a9e68416'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom'
  name 'PB for Desktop'
  homepage 'https://github.com/sidneys/pb-for-desktop'

  app 'PB for Desktop.app'

  zap trash: [
               '~/Library/Application Support/PB for Desktop',
               '~/Library/Caches/de.sidneys.pb-for-desktop',
               '~/Library/Logs/pb-for-desktop',
               '~/Library/Preferences/de.sidneys.pb-for-desktop.plist',
               '~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist',
               '~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState',
             ]
end
