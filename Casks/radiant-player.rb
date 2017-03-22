cask 'radiant-player' do
  version '1.11.4'
  sha256 '4594e54498c526cc33c50efa09dbf22e5a35fcccb3dba84a195160c5c7171794'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '548ec4c8abdfacc29f8bcfe70b12d4b00b5bed6b21d7f27b1eeaffd9e23cc65a'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'

  app 'Radiant Player.app'
end
