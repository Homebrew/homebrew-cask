cask "obscura-vpn" do
  version "1.184"
  sha256 "fb48a4594a5188e6e94d7eab65bb31f10aa986587e0660974a12b520e6f308a7"

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
