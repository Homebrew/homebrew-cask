cask "brightvpn" do
  version "1.520.821"
  sha256 "445bcdea25aefb1750183862ce2f7f2ebfe496ad867b0af6b7ba1fc462f5baeb"

  url "https://brightdata.com/static/BrightVPN-#{version}.dmg",
      verified: "brightdata.com/static/"
  name "Bright VPN"
  desc "VPN service"
  homepage "https://brightvpn.com/"

  livecheck do
    url "https://brightdata.com/brightvpn_versions.json"
    strategy :json do |json|
      json["vpn_mac"]
    end
  end

  depends_on macos: ">= :big_sur"

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
