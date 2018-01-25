cask 'soda-player' do
  version :latest
  sha256 :no_check

  url 'https://releases.sodaplayer.com/mac/Soda%20Player.dmg'
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
