cask 'soundcleod' do
  version '1.3.4'
  sha256 '8fb6ee8024d8773d4389227b0bfc0725ff2aae33b12064365bd32aba6ea5cc70'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
