cask 'syncplay' do
  version '1.6.3'

  if MacOS.version <= :el_capitan
    url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}_macOS_legacy.dmg"
    sha256 'e81737848d3d03716daa813e6a47431f14f88db694a4ac5e341ea52103b4dea6'
  else
    url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg"
    sha256 '27cc76a66a2a1c79d2e46ad6568ed8678b83f00d80a3ec7db5527774f2223caf'
  end

  # github.com/Syncplay/syncplay was verified as official when first introduced to the cask
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
               '~/Library/Application Support/org.videolan.vlc/lua/intf/syncplay.lua',
             ]
end
