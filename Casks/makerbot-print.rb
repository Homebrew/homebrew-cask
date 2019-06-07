cask 'makerbot-print' do
  version :latest
  sha256 :no_check

  # downloads-makerbot-com.s3.amazonaws.com/installer/release was verified as official when first introduced to the cask
  url 'https://downloads-makerbot-com.s3.amazonaws.com/installer/release/MakerBotPrintInstaller.pkg'
  name 'MakerBot Print'
  homepage 'https://www.makerbot.com/print/'

  pkg 'MakerBotPrintInstaller.pkg'

  uninstall pkgutil:   [
                         'com.makerbot.electron',
                         'com.makerbot.MakerBot Print',
                         'com.makerbot.MakerBotPrintInstallScripts',
                         'com.makerbot.usb_daemon',
                       ],
            delete:    '/Applications/MakerBot Print.app',
            quit:      'com.makerbot.electron',
            launchctl: [
                         'com.makerbot.fire_e',
                         'com.makerbot.mini_4',
                         'com.makerbot.mini_8',
                         'com.makerbot.replicator_5',
                         'com.makerbot.replicator_b',
                         'com.makerbot.z18_6',
                       ]
end
