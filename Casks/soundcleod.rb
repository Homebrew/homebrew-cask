cask 'soundcleod' do
  version '1.1.6'
  sha256 'd097815eff0086dc92d48df043c78f573f7342dbc30e9cad45950f13bd847f7b'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: 'b8643e7b220e552615c71a136af27f373b7301144b5ddd19cc9d071e5cb17cd0'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
