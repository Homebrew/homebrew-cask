cask "brightvpn" do
  version "1.232.902"
  sha256 "1b49de4cfd30d1e2d3d7c04362f5ddcea131682818550ab76c8dcc48a84df949"

  url "https://brightdata.com/static/BrightVPN-1.1-#{version}.dmg",
      verified: "brightdata.com/static/"
  name "Bright VPN"
  desc "VPN service"
  homepage "https://brightvpn.com/"

  livecheck do
    url :homepage
    regex(/"vpn_mac"\s*:\s*"v?(\d+(?:[.-]\d+)+)"/i)
  end

  depends_on macos: ">= :catalina"

  app "BrightVPN.app"

  uninstall quit: [
    "brightvpn.com",
    "io.luminati.sdk.net-updater",
    "io.luminati.sdk.net-updater-launcher",
  ]

  zap trash: [
    "~/Library/Application Support/BrightVPN",
    "~/Library/Caches/brightvpn.com",
    "~/Library/HTTPStorages/brightvpn.com",
    "~/Library/Preferences/brightvpn.com.perr.plist",
    "~/Library/Preferences/brightvpn.com.perr_once.plist",
    "~/Library/Preferences/brightvpn.com.plist",
    "~/Library/Preferences/group.brightvpn.com.widget-container.plist",
  ]
end
