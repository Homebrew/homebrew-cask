cask 'radiant-player' do
  version '1.8.1'
  sha256 'f85a6384e81338161a958ee0736a60e398ba78ad5daffb1a1a6d14c782e16a3b'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'df2eb30b6a6ab64784f085be7da5312ee049f107fbf817f72519f398f7b68262'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
