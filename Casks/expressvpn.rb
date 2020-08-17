cask "expressvpn" do
  version "7.9.7.8"
  sha256 "8e79bbf950433885ba89d84cf33ce273f03c2b847fb86660efc3b556c4a15d31"

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast "https://www.expressvpn.xyz/vpn-software/vpn-mac"
  name "ExpressVPN"
  homepage "https://www.expressvpn.xyz/vpn-software/vpn-mac/"

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall script:  {
    executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
    input:      ["Yes"],
    sudo:       true,
  },
            pkgutil: "com.expressvpn.ExpressVPN"
end
