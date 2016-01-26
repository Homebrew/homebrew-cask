cask 'diskmaker-x' do
  version '5.0.2'
  sha256 '9a210eb4db6d860e14d7f3e63d0cc67baeadd3a80e1ef607e3d2a44b85080472'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.to_i}.dmg"
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.to_i}.app"
end
