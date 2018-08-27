cask 'diskmaker-x' do
  version '7.0.1'
  sha256 'c9b12c63d9742b2eb0136d352725b364a2af98f26e7efd310520a44a3d367471'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for High Sierra.app"
end
