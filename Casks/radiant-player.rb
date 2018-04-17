cask 'radiant-player' do
  version '1.11.4'
  sha256 '4594e54498c526cc33c50efa09dbf22e5a35fcccb3dba84a195160c5c7171794'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'f57a6409f37f830b42ceb4f0d8cedaab6a6f8a444aa26b2cdf6b49eadeb5b010'
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
