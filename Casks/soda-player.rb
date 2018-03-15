cask 'soda-player' do
  version '1.3.6'
  sha256 '6075724e8db052538718b8904ec9417db16b8c3d1d41beb0855690319522394c'

  url "https://releases.sodaplayer.com/mac/Soda%20Player%20#{version}.dmg"
  name 'Soda Player'
  homepage 'https://www.sodaplayer.com/'

  auto_updates true

  app 'Soda Player.app'

  zap trash: [
               '~/Library/Application Support/Soda Player',
               '~/Library/Preferences/com.sodaplayer.sodaplayer.plist',
               '~/Library/Preferences/com.sodaplayer.sodaplayer-helper.plist',
               '~/Library/Saved Application State/com.sodaplayer.sodaplayer.savedState',
             ]
end
