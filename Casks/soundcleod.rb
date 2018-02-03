cask 'soundcleod' do
  version '1.3.2'
  sha256 '11933d97317184c87c822dbcbfc8dac76bc70fd7ee509907f83428e2199c516e'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '43f512e286815d229501fa5905f2b105c3cb9738b26a6da6ccb4de2708fc6469'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
