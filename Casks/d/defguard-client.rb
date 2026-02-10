cask "defguard-client" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.2"
  sha256 arm:   "f7b1abde61ad6a6f3923b09d25f0f81517400f1f602ab4f412b9e4b6aa4db379",
         intel: "47cf03ccce8a9e35103a125fc0072eebd5284252a02b9d3b3523d7cc6dc22587"

  url "https://github.com/DefGuard/client/releases/download/v#{version}/defguard-#{arch}-apple-darwin-#{version}.pkg"
  name "Defguard Client"
  desc "WireGuard VPN client which supports multi-factor authentication"
  homepage "https://github.com/defguard/client"

  deprecate! date: "2025-12-16", because: :moved_to_mas

  pkg "defguard-#{arch}-apple-darwin-#{version}.pkg"

  uninstall launchctl: "net.defguard",
            quit:      "defguard-client",
            pkgutil:   "net.defguard",
            delete:    "/Library/LaunchDaemons/net.defguard.plist"

  zap trash: [
    "~/Library/Application Support/net.defguard",
    "~/Library/Logs/Defguard",
    "~/Library/Preferences/net.defguard.plist",
  ]
end
