cask "mullvadvpn" do
  version "2021.1"
  sha256 "b5a7fa8ba33619f53a16e56398ec91c4db101d04a7bc0f766429fd721744bcd6"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  appcast "https://github.com/mullvad/mullvadvpn-app/releases.atom"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  conflicts_with cask: "mullvadvpn-beta"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   "net.mullvad.vpn",
            launchctl: "net.mullvad.daemon"
end
