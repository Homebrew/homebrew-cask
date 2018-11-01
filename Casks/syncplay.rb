cask 'syncplay' do
  version '1.6.0'
  sha256 '50cb1c5a1d247cf097067c8ef56745366cf63fd916c68d26be3763959195498f'

  # github.com/Syncplay/syncplay was verified as official when first introduced to the cask
  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg"
  appcast 'https://github.com/Syncplay/syncplay/releases.atom'
  name 'Syncplay'
  homepage 'https://syncplay.pl/'

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
