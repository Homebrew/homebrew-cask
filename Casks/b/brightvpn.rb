cask "brightvpn" do
  version "1.1-1.227.590"
  sha256 "e2597911d0c0b7b6b0fba571990a875c7da8fe7d08728512b7f18017478ab881"

  url "https://brightdata.com/static/BrightVPN-#{version}.dmg",
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
