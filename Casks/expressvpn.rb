cask 'expressvpn' do
  version '7.8.1.6'
  sha256 '9901467a1500ec2cf0bd4d545e583f00a59804ee94a1f070ddd41fc631629b68'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: [
                         'com.expressvpn.ExpressVPN.agent',
                         'com.expressvpn.ExpressVPN.update',
                       ]
end
