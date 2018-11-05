cask 'avg-antivirus' do
  version :latest
  sha256 :no_check

  # s-install.avcdn.net/mac-av was verified as official when first introduced to the cask
  url 'https://s-install.avcdn.net/mac-av/10_10/AAVG/avg_mac_security_online.dmg'
  name 'AVG Antivirus for Mac'
  homepage 'https://www.avg.com/us-en/avg-antivirus-for-mac'

  pkg 'Install AVG AntiVirus.pkg'

  uninstall pkgutil:   [
                         'com.avast.VpsPlugin',
                         'com.avast.installer.AppClosePlugin',
                         'com.avg.avg',
                         'com.avg.pkg.hub',
                       ],
            launchctl: [
                         'com.avg.hub',
                         'com.avg.userinit',
                       ]
end
