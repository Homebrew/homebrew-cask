cask 'diskmaker-x' do
  version '8'
  sha256 '32b4600ae6a51ecfa819125dc85d179d632fba5e04b11d41235f6fe20e834ccf'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Mojave.app"
end
