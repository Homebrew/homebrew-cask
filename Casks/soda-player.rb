cask 'soda-player' do
  version '1.4.1'
  sha256 '90ee953e0c616a6c60a49c8d78a357d5c7bd6230046e279fe6edaeccc0f04431'

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
