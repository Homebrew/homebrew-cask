cask 'radiant-player' do
  version '1.8.4'
  sha256 'c6b867ce0c5d097cb1f7f2962c37dd6575b84723a775dac2aeb818bd5e56c2a8'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '7f470f3d1025a64cf3ed2dc550885dbe7f9383339cfebc5bb62dbea4327829d7'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
