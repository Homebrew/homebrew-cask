cask 'radiant-player' do
  version '1.11.7'
  sha256 'ef22d4b3fb28e3baec64a9b9cbbace38344ec66d23c8fa782097f8a406a8960c'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'

  app 'Radiant Player.app'

  uninstall quit: 'com.sajidanwar.Radiant-Player'

  zap trash: [
               '~/Library/Application Support/Radiant Player',
               '~/Library/Caches/com.sajidanwar.Radiant-Player',
               '~/Library/Cookies/com.sajidanwar.Radiant-Player.binarycookies',
               '~/Library/Preferences/com.sajidanwar.Radiant-Player.plist',
               '~/Library/Saved Application State/com.sajidanwar.Radiant-Player.savedState',
             ]
end
