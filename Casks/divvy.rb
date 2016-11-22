cask 'divvy' do
  version '1.5'
  sha256 'ed1b38f12967ae833b80448e30714e242599aba8891f9abe5c5ecb14ab074aaf'

  url "https://mizage.com/downloads/Divvy_#{version}.zip"
  appcast 'https://mizage.com/updates/profiles/divvy.php',
          checkpoint: 'cfa5899a82ba4e8e0c8339a0b070290b2ffd51dd7a82869a22cd7ad209b1b39f'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'

  app 'Divvy.app'

  zap delete: [
                '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                '~/Library/Preferences/com.mizage.Divvy.plist',
              ]
end
