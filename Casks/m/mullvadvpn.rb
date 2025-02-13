cask "mullvadvpn" do
  version "2025.4"
  sha256 "af81d35022f6d1abecc0eacf33b3c767efbe16a0edb07beec5911c114092d69b"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://mullvad.net/download/vpn/macos"
    regex(/href=.*?MullvadVPN[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask: "mullvadvpn@beta"
  depends_on macos: ">= :ventura"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall launchctl: "net.mullvad.daemon",
            pkgutil:   "net.mullvad.vpn",
            delete:    [
              "/Library/Caches/mullvad-vpn",
              "/Library/LaunchDaemons/net.mullvad.daemon.plist",
              "/opt/homebrew/share/fish/vendor_completions.d/mullvad.fish",
              "/usr/local/share/fish/vendor_completions.d/mullvad.fish",
              "/usr/local/share/zsh/site-functions/_mullvad",
              "/var/log/mullvad-vpn",
            ]

  zap trash: [
    "/etc/mullvad-vpn",
    "~/Library/Application Support/Mullvad VPN",
    "~/Library/Logs/Mullvad VPN",
    "~/Library/Preferences/net.mullvad.vpn.plist",
  ]
end
