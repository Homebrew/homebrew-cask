class ScreensConnect < Cask
  url 'https://screensconnect.com/downloads/screensconnect.dmg'
  homepage 'https://screensconnect.com'
  version 'latest'
  sha256 :no_check
  install 'Screens Connect.pkg'
end
