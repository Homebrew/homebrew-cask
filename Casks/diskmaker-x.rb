cask 'diskmaker-x' do
  version '8.0.2'
  sha256 'b63537c31faa49e8a3f850d86d93a7185fcbf50ff50d242a8ff79fb748b9374e'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Mojave.app"
end
