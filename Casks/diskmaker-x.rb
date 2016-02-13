cask 'diskmaker-x' do
  version '5.0.3'
  sha256 '040a21bdef0c2682c518a9e9572f7547b5f1fb02b8930a8a084ae85b12e70518'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'http://diskmakerx.com/feed/',
          checkpoint: '65c41b1c32cf72f4cccd0f467d903ed768dedc407936bf1a64ec90764deb7da1'
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.major}.app"
end
