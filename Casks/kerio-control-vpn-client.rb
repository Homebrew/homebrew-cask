cask 'kerio-control-vpn-client' do
  version :latest
  sha256 :no_check

  url 'http://download.kerio.com/dwn/kerio-control-vpnclient-mac.dmg'
  name 'Kerio Control VPN Client'
  homepage 'http://kerio.com/'

  pkg 'Kerio Control VPN Client Installer.pkg'

  uninstall kext:      'com.kerio.kext.kvnet',
            launchctl: 'com.kerio.kvpncsvc',
            pkgutil:   'com.kerio.control.kvpnclient.pkg',
            quit:      [
                         'com.kerio.VPN.status',
                         'com.kerio.VPN.agent',
                       ]
end
