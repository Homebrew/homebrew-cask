cask "strongvpn" do
  version "2.4.5,142651"
  sha256 "ad782f44f67e6bb442a988b4deb1bdc88c7179568cfa2e92b36f6440909324ef"

  url "https://static.colomovers.com/mac/StrongVPN_v#{version.csv.first}_b#{version.csv.second}.zip",
      verified: "static.colomovers.com/mac/"
  name "StrongVPN"
  desc "VPN app with support for multiple protocols"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  livecheck do
    url "https://static.colomovers.com/mac/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "StrongVPN.app"

  zap trash: [
    "~/Library/Application Support/com.strongvpn.StrongVPN2-Client",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.strongvpn.StrongVPN2-Client",
    "~/Library/Caches/com.strongvpn.StrongVPN2-Client",
    "~/Library/HTTPStorages/com.strongvpn.StrongVPN2-Client*",
    "~/Library/Preferences/com.strongvpn.StrongVPN2-Client.plist",
    "~/Library/Saved Application State/com.strongvpn.StrongVPN2-Client.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
