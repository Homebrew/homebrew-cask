cask "sipgate" do
  version "2.26.1"
  sha256 "bbb9c668fb01847f6b304410df564d1080f7d110eb72e789694daa37aced7a97"

  url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/sipgate-#{version}.zip",
      verified: "s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/"
  name "sipgate"
  desc "Softphone for making telephone calls over the internet"
  homepage "https://www.sipgate.de/app"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "sipgate.app"

  zap trash: [
    "~/Library/Application Support/sipgate-desktop",
    "~/Library/Caches/com.sipgate.desktop",
    "~/Library/Caches/com.sipgate.desktop.ShipIt",
    "~/Library/Caches/sipgate-desktop-updater",
    "~/Library/HTTPStorages/com.sipgate.desktop",
    "~/Library/Logs/sipgate-desktop",
    "~/Library/Preferences/com.sipgate.desktop.plist",
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
  ]
end
