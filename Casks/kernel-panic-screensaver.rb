cask 'kernel-panic-screensaver' do
  version :latest
  sha256 :no_check

  url 'http://www.doomlaser.com/downloads/KPSaver.zip'
  name 'Kernel Panic Screensaver'
  homepage 'http://doomlaser.com/kernel-panic-screensaver/'

  app 'KPsaver.saver'
end
