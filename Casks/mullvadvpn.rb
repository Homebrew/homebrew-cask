cask "mullvadvpn" do
  version "2021.6"
  sha256 "fddd96e5c8d829936b63be4a754b865d52422e7984369c5ab479706892b38b71"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://mullvad.net/download/app/pkg/latest/"
    strategy :header_match
  end

  conflicts_with cask: "homebrew/cask-versions/mullvadvpn-beta"
  depends_on macos: ">= :high_sierra"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   "net.mullvad.vpn",
            launchctl: "net.mullvad.daemon"

  zap trash: [
    "~/Library/Application Support/Mullvad VPN",
    "~/Library/Logs/Mullvad VPN",
    "~/Library/Preferences/net.mullvad.vpn.plist",
    "/Library/LaunchDaemons/net.mullvad.daemon.plist",
  ]
end
