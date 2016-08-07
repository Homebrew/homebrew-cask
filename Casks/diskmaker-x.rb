cask 'diskmaker-x' do
  version '5.0.3'
  sha256 '040a21bdef0c2682c518a9e9572f7547b5f1fb02b8930a8a084ae85b12e70518'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'http://diskmakerx.com/feed/',
          checkpoint: '412ab96811e9aeea8c3c849c647af09f848ae1f77b91d96eaea5ecb066b29252'
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.major}.app"
end
