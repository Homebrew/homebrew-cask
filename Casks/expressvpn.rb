cask "expressvpn" do
  version "7.11.0.8"
  sha256 "a2bc21fa596727c0c04479cbbfc622be8e90950b9f50d89f624da306a90aa769"

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
