cask 'soda-player' do
  version '1.2.3'
  sha256 '67d8775e216685b05ded343b9093f91b0794e5396b43b96b3d588425ab7197bd'

  url "https://releases.sodaplayer.com/mac/Soda%20Player%20#{version}.dmg"
  appcast 'https://headwayapp.co/soda-player-changelog',
          checkpoint: 'b08ed4cb5eff7f523859a0b71710039fa380d264a005f007d58f892fe6f813e8'
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
