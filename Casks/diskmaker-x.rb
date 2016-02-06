cask 'diskmaker-x' do
  version '5.0.3'
  sha256 '040a21bdef0c2682c518a9e9572f7547b5f1fb02b8930a8a084ae85b12e70518'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.to_i}.app"
end
