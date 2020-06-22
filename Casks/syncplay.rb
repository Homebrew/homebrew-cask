cask 'syncplay' do
  version '1.6.5'
  sha256 'd595e5e781618a99b89d03142a748bacd03bee08b75eef4788b6a966751d9f7a'

  # github.com/Syncplay/syncplay/ was verified as official when first introduced to the cask
  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg"
  appcast 'https://github.com/Syncplay/syncplay/releases.atom'
  name 'Syncplay'
  homepage 'https://syncplay.pl/'

  depends_on macos: '>= :sierra'

  app 'Syncplay.app'

  zap trash: [
               '~/.syncplay',
               '~/Library/Saved Application State/pl.syncplay.Syncplay.savedState',
               '~/Library/Preferences/com.syncplay.MoreSettings.plist',
               '~/Library/Preferences/com.syncplay.Interface.plist',
               '~/Library/Preferences/com.syncplay.MainWindow.plist',
               '~/Library/Preferences/pl.syncplay.Syncplay.plist',
               '~/Library/Preferences/com.syncplay.PlayerList.plist',
             ]
end
