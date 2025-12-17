cask "obscura-vpn" do
  version "1.151"
  sha256 "df1e8b537d85a248d8991fb64f41b86934600be2cbe163260a8ed3e0c2bee250"

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
