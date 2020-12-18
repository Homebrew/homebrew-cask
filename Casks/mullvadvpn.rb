cask "mullvadvpn" do
  version "2020.7"
  sha256 "7ec7729557afe6291731181173802761596d70e4fe93a4608809ed2f9320331c"

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
