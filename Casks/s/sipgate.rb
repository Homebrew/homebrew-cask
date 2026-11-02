cask "sipgate" do
  version "2.46.1"
  sha256 "2723f08dffabf1308f8e46f3ad20620ddd1302f2219be692a1c96a4166b5197a"

  url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/sipgate-#{version}.zip"
  name "sipgate"
  desc "Softphone for making telephone calls over the internet"
  homepage "https://www.sipgate.de/app"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "sipgate.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sipgate.desktop.sfl*",
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
