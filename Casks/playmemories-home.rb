cask 'playmemories-home' do
  version '3.5.00,6XZpdMN1Ie'
  sha256 '3b3ab315fd203c64b07d00b82d8a6ae46a677ad3e604e955a42c4ce209d0ca93'

  # pmb.update.sony.net/PMH was verified as official when first introduced to the cask
  url "http://pmb.update.sony.net/PMH/#{version.after_comma}/PMHOME_#{version.before_comma.no_dots}DL.dmg"
  name 'PlayMemories Home'
  homepage 'https://support.d-imaging.sony.co.jp/www/disoft/int/download/playmemories-home/mac/en/'

  pkg 'PMH_INST.pkg'

  uninstall pkgutil:   'com.sony.pkg.PMHInstaller',
            launchctl: [
                         'com.sony.SonyAutoLauncher.agent',
                         'com.sony.WirelessAutoImportLauncher.agent',
                       ]

  zap delete: [
                '/Applications/PMHMac.app',
                '/Applications/Wireless Auto Import.app',
              ]
end
