cask "defguard-client" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "93a9003db5c2d98252576a748c246ee57584e88e443c658ce0baa5f306d80987",
         intel: "1e6f3672e274161cae01ee5cdf11ae8243f46e0590b532d8ca186eff57b82f46"

  url "https://github.com/DefGuard/client/releases/download/v#{version}/defguard-#{arch}-apple-darwin-#{version}.pkg"
  name "Defguard Client"
  desc "WireGuard VPN client which supports multi-factor authentication"
  homepage "https://github.com/defguard/client"

  livecheck do
    url :url
    strategy :github_latest
  end

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
