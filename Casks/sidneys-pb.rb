cask 'sidneys-pb' do
  version '6.3.1'
  sha256 '6cf111cccab7f25bcd053cbed30e4c95fd9e8a8060bafed0f0a75a7e42bb83d5'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: 'b41a00d18ace2654c1a99442d1fc17d68cdff8b34f39993702f361b84d6dd80a'
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
