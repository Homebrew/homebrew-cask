cask 'radiant-player' do
  version '1.10.0'
  sha256 'c85fc44250832448bbab401a99fd21d9880fdb612d666c85b9d797abf9c783ec'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '29e59b740579d1eeace5209b948d24de7b6e53702357893638c19735102ad737'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
