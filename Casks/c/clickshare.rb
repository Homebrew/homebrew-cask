cask "clickshare" do
  version "4.52.0,11"
  sha256 "be0db58f1f4ae2b0d982690aaffe40bf20447404fcd54d072f68e67f9df965d3"

  url "https://assets.cloud.barco.com/clickshare/release/ClickShare-#{version.csv.first}-b#{version.csv.second}_mac.zip"
  name "ClickShare"
  desc "Client for wireless screen sharing with Barco conferencing systems"
  homepage "https://www.barco.com/en/product/clickshare-app"

  livecheck do
    url "https://assets.cloud.barco.com/clickshare/release/release.mac"
    strategy :json do |json|
      json["version"].to_s.sub(/-?b/, ",")
    end
  end

  auto_updates true
  depends_on :macos

  app "ClickShare.app"

  uninstall launchctl: [
              "com.barco.clickshare.agent",
              "com.barco.clickshare.autorun",
              "com.barco.clickshare.user.agent",
              "com.barco.clickshare.user.autorun",
            ],
            quit:      [
              "com.barco.clickshare",
              "com.barco.clickshare.updater",
            ],
            trash:     [
              "~/Library/LaunchAgents/com.barco.clickshare.agent.plist",
              "~/Library/LaunchAgents/com.barco.clickshare.autorun.plist",
            ]

  zap trash: [
    "~/.clickshare",
    "~/Library/Application Support/ClickShare",
    "~/Library/Caches/com.barco.clickshare.updater*",
    "~/Library/HTTPStorages/com.barco.clickshare.updater",
    "~/Library/LaunchAgents/com.barco.clickshare.agent.plist",
    "~/Library/LaunchAgents/com.barco.clickshare.autorun.plist",
    "~/Library/Preferences/com.barco.clickshare*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
