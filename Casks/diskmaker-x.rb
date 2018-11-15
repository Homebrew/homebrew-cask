cask 'diskmaker-x' do
  version '8.0.1'
  sha256 'd541ece9cae7d6e46fe707132db55bf35b651082eb8694e6c6d6cc380c8cb977'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Mojave.app"
end
