cask "expressvpn" do
  version "7.9.5.2"
  sha256 "dabb1d0ac109547dd8662a36c03e33058cfcb1052de2bf9064228788840f2a03"

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast "https://www.expressvpn.xyz/vpn-software/vpn-mac"
  name "ExpressVPN"
  homepage "https://www.expressvpn.xyz/vpn-software/vpn-mac/"

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall script:  {
    executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
    input:      ["Yes"],
  },
            pkgutil: "com.expressvpn.ExpressVPN"
end
