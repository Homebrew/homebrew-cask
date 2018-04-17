cask 'avg-antivirus' do
  version :latest
  sha256 :no_check

  # avg.mac.avcdn.net/macosx was verified as official when first introduced to the cask
  url 'http://avg.mac.avcdn.net/macosx/avg/avg_antivirus_for_mac_online.dmg'
  name 'AVG Antivirus for Mac'
  homepage 'https://www.avg.com/us-en/avg-antivirus-for-mac'

  pkg 'Install AVG AntiVirus.pkg'

  uninstall pkgutil: [
                       'com.avast.VpsPlugin',
                       'com.avast.installer.AppClosePlugin',
                       'com.avg.avg',
                     ]
end
