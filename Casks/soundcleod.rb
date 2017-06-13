cask 'soundcleod' do
  version '1.3.0'
  sha256 '15215156a85848b23034857d64768a94a1f7a866e5eca4dd0efc9ddaf2bb2ae6'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '776c533e7f56d078cd42c08cfe0d569c5ad4c7a9679c4afa4257879e51ec3430'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
