cask 'makerbot-print' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/downloads-makerbot-com/installer/release was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads-makerbot-com/installer/release/MakerBotDesktopInstaller.pkg'
  name 'MakerBot Print'
  homepage 'https://www.makerbot.com/print/'

  pkg 'MakerBotDesktopInstaller.pkg'

  uninstall pkgutil: [
                       'com.makerbot.MakerBot Print',
                       'com.makerbot.MakerBotPrintInstallScripts',
                       'com.makerbot.usb_daemon',
                     ]
end
