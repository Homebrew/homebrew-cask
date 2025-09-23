cask "obscura-vpn" do
  version "1.138"
  sha256 "25cb55863ccef108aa23907c202311c7183254f2d64896e40ccc34af95df6284"

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
