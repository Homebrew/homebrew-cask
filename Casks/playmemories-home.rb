cask 'playmemories-home' do
  version '3.3.00'
  sha256 '3b0755157bd0d5d4fcae5f6199eac3f6d158bafe018fcd15dd79f56aabfac98b'

  # pmb.update.sony.net/PMH was verified as official when first introduced to the cask
  url "http://pmb.update.sony.net/PMH/ZwznMvYM3l/PMHOME_#{version.no_dots}DL.dmg"
  name 'PlayMemories Home'
  homepage 'http://support.d-imaging.sony.co.jp/www/disoft/int/download/playmemories-home/mac/en/'

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
