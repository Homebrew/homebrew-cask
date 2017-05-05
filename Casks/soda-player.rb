cask 'soda-player' do
  version '1.1.2'
  sha256 'd7ba85c4afa1631f1df809b34da7e79193b88ecfbd2961d9c2f0f92ec8f9db8a'

  url 'https://releases.sodaplayer.com/mac/Soda%20Player.dmg'
  appcast 'http://changelog.sodaplayer.com/',
          checkpoint: '9dee7ffbaa9330c8909e950a4f51e167e5327ceea4cbbaa54d7b5cdc5d6999e8'
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
