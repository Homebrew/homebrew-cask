cask 'diskmaker-x' do
  version '9.0.b1'
  sha256 '9946b75cafed3f9e71cbe09c45cac7db66a4a17a2bb61c76f6e006822d077d52'
  
  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Catalina.app"
end
