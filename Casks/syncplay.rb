cask 'syncplay' do
  version '1.6.4'
  sha256 'efa523f9e8fff814ed2576f35a0ffe2e75e03ce81a06c95224a46d25e0004c42'

  # github.com/Syncplay/syncplay was verified as official when first introduced to the cask
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
