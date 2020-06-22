cask 'expressvpn' do
  version '7.9.0.9'
  sha256 '5fec032ac7b0f1721b2d358f747c10bb599e202aa77ec3ce4d10b7950c95ef86'

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
