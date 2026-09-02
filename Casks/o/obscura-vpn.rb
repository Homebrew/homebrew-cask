cask "obscura-vpn" do
  version "1.170"
  sha256 "a0f920af5617e82cb5fef79a6ea40acf5fcf86b03c98a0200c1d7730aa0e46af"

  url "https://pkgs.obscura.net/macos/obscura-#{version}.dmg"
  name "Obscura VPN"
  desc "VPN client"
  homepage "https://obscura.net/"

  livecheck do
    url "https://pkgs.obscura.net/macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Obscura VPN.app"

  zap trash: [
    "~/Library/Caches/net.obscura.vpn-client-app",
    "~/Library/HTTPStorages/net.obscura.vpn-client-app",
    "~/Library/HTTPStorages/net.obscura.vpn-client-app.binarycookies",
    "~/Library/Preferences/net.obscura.vpn-client-app.plist",
    "~/Library/Saved Application State/net.obscura.vpn-client-app.savedState",
    "~/Library/WebKit/net.obscura.vpn-client-app",
  ]
end
