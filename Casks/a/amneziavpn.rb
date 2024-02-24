cask "amneziavpn" do
  version "4.4.0.0"
  sha256 "2f7c13cceef59c4c72b551e2a2abbaf7cde823a564ed7166f17e56f008a7fff5"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}.dmg",
      verified: "github.com/amnezia-vpn/amnezia-client/"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "AmneziaVPN.app"

  uninstall quit:   [
              "AmneziaVPN",
              "AmneziaVPN-service",
            ],
            delete: "/Applications/AmneziaVPN.app"

  zap trash: [
    "~/Library/Caches/AmneziaVPN.ORG",
    "~/Library/Preferences/AmneziaVPN.plist",
    "~/Library/Preferences/org.amneziavpn.AmneziaVPN.plist",
  ]
end
