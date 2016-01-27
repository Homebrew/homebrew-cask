cask 'diskmaker-x' do
  version :latest
  sha256 :no_check

  url 'http://diskmakerx.com/downloads/DiskMaker_X.dmg'
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app 'DiskMaker X.app'
end
