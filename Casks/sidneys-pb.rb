cask 'sidneys-pb' do
  version '9.3.9'
  sha256 '5314f3d4444e12951c61b04ab99192e505fe837062f37d24050ddc339c63e0a6'

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
