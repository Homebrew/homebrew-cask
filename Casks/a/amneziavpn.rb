cask "amneziavpn" do
  version "4.8.1.9"
  sha256 "e6160fdb5a57595ae35a4f1434de5aab7baac201971c77ec0621beaa3420c876"

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

  caveats do
    requires_rosetta
  end
end
