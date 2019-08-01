cask 'sidneys-pb' do
  version '9.0.9'
  sha256 '4dab276d097a6268962edce8db653da384b3c6a7b59999cf4f5aec1eccfe60a8'

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
