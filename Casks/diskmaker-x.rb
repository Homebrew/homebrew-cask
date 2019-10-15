cask 'diskmaker-x' do
  if MacOS.version == :catalina
    sha256 '9946b75cafed3f9e71cbe09c45cac7db66a4a17a2bb61c76f6e006822d077d52'
    version '9.0.b1'
  else
    sha256 '79b490dc829775450aafadeddd0afc58bdcef9c60fc82d9db1427c51b57e88a7'
    version '8.0.3'
  end

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast 'https://diskmakerx.com/feed/'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for macOS Mojave.app"
end
