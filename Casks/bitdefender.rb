cask 'bitdefender' do
  version :latest
  sha256 :no_check

  url 'http://download.bitdefender.com/mac/antivirus/en/bitdefender_antivirus_for_mac.dmg'
  name 'Bitdefender Virus Scanner'
  homepage 'http://www.bitdefender.com/solutions/virus-scanner-for-mac.html'

  pkg 'Bitdefender Installer.pkg'

  uninstall pkgutil: 'com.bitdefender.*'
end
