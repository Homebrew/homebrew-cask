cask 'diskmaker-x' do
  version '8.0.3'
  sha256 '79b490dc829775450aafadeddd0afc58bdcef9c60fc82d9db1427c51b57e88a7'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Mojave.app"
end
