cask :v1 => 'diskmaker-x' do
  version '5.0.1'
  sha256 '69f2d57392f56fbc1fa9cccc0d1d2be57b8ff4d39bcfeb1cb6770fbf702fb3df'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version.to_i}.dmg"
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version.to_i}.app"
end
