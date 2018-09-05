cask 'playmemories-home' do
  version '3.6.01,zb2OnHfINu'
  sha256 '99de6ea54029d14b7c7b94d7a4d5096470a65a26a3aff53164213272b0d33896'

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

  zap trash: [
               '/Applications/PMHMac.app',
               '/Applications/Wireless Auto Import.app',
             ]
end
