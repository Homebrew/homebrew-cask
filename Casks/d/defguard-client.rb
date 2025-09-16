cask "defguard-client" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "e957b4fa68dc46b97b1fe2a7fa77f00c774172fb95486e38190cde8a67975950",
         intel: "b0d49b65dfc70b7b69fc018d400ab5b07461a7a3191de28e09947feaa4a61492"

  url "https://github.com/DefGuard/client/releases/download/v#{version}/defguard-#{arch}-apple-darwin-#{version}.pkg"
  name "Defguard Client"
  desc "WireGuard VPN client which supports multi-factor authentication"
  homepage "https://github.com/defguard/client"

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
