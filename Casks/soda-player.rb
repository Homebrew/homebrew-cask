cask 'soda-player' do
  version '1.3.3'
  sha256 '95c68ac0681a214d7ede28f36336a8a95cee710217408d62f372eab662ae8420'

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
