cask 'diskmaker-x' do
  version '5.0.3'
  sha256 '040a21bdef0c2682c518a9e9572f7547b5f1fb02b8930a8a084ae85b12e70518'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'http://diskmakerx.com/feed/',
          checkpoint: '5d051b2e28d20d4aac4f16feabb309616b1a4279251b23e3fa167ad8bb914630'
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.major}.app"
end
