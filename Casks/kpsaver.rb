cask 'kpsaver' do
  version :latest
  sha256 :no_check

  url 'http://www.doomlaser.com/downloads/KPSaver.zip'
  name 'Kernel Panic Screensaver'
  homepage 'http://doomlaser.com/kernel-panic-screensaver/'

  screen_saver 'KPsaver.saver'
end
