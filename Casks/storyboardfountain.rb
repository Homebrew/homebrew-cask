cask 'storyboardfountain' do
  version '0.0.2'
  sha256 '38b2ee532d004af1eb621f1b52892b3608f6f0f23a2a74ec7d0f4c4082a34b09'

  url "http://storyboardfountain.com/downloads/StoryboardFountain-#{version}.zip"
  appcast 'https://github.com/setpixel/storyboard-fountain/releases.atom',
          checkpoint: '24b648c01af5b66a5bd5da91e74fcf2cf5e81133ada2a2007e878d1ad236b08a'
  name 'StoryboardFountain'
  homepage 'http://storyboardfountain.com/'

  app 'StoryboardFountain.app'
end
