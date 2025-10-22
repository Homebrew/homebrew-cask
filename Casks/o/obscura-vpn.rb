cask "obscura-vpn" do
  version "1.143"
  sha256 "7308c9ebe254e0ab67f240ee3711a04af504ce09a66212d9b4ec3f5e72c04df5"

  url "https://pkgs.obscura.net/macos/obscura-#{version}.dmg"
  name "Obscura VPN"
  desc "VPN client"
  homepage "https://obscura.net/"

  livecheck do
    url "https://pkgs.obscura.net/macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
