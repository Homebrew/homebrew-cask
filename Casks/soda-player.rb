cask 'soda-player' do
  version '1.3.1'
  sha256 '06f99ca32b749114acfe6275262f3cadef2dccf5c40b026a47f24d6ace83daa2'

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
