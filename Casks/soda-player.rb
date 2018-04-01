cask 'soda-player' do
  version '1.3.5'
  sha256 '92b11b5095c9c67096ab438874690e90add73e817d6be4c7ac0337451eca74a1'

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
