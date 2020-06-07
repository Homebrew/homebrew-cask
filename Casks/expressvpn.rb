cask 'expressvpn' do
  version '7.8.4.2'
  sha256 '01616e697516b6cef8986b0ff71290cf041a68f45e20ab7762c198af670ac4a3'

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
