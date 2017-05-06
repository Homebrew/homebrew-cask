cask 'soda-player' do
  version '1.1.3'
  sha256 '759793eb97409fde0063bf954792598063457b5ea73d1ce17b477b480d2d3913'

  url "https://releases.sodaplayer.com/mac/Soda%20Player.dmg?version=#{version}"
  name 'Soda Player'
  homepage 'https://www.sodaplayer.com/'

  auto_updates true

  app 'Soda Player.app'

  zap delete: [
                '~/Library/Application Support/Soda Player',
                '~/Library/Preferences/com.sodaplayer.sodaplayer.plist',
                '~/Library/Preferences/com.sodaplayer.sodaplayer-helper.plist',
                '~/Library/Saved Application State/com.sodaplayer.sodaplayer.savedState',
              ]
end
