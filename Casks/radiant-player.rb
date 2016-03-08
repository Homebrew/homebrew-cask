cask 'radiant-player' do
  version '1.7.2'
  sha256 '008f2425f8656899aadac0d5af4e5c8becc570b3f158675b67eb777ac011fadf'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '07692db6d614631a1d45da8f051846de8e2fe0db124303267efe3a42a286164a'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
