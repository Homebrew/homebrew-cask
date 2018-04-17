cask 'soundcleod' do
  version '1.3.4'
  sha256 '8fb6ee8024d8773d4389227b0bfc0725ff2aae33b12064365bd32aba6ea5cc70'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '7d6ef0e71c5c6b80b063ae9076f3e88dc539fc6647e38cd4c2bfcad5d3f33b4e'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
