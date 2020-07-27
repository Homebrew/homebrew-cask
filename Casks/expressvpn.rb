cask 'expressvpn' do
  version '7.9.4.10'
  sha256 '2ba96c120d851ba026848efa30a57f43a4f362c56ac6bc5d283b2a11fafe0c78'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall script:  {
                       executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
                       input:      ['Yes'],
                     },
            pkgutil: 'com.expressvpn.ExpressVPN'
end
