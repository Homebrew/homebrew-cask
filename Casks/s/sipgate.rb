cask "sipgate" do
  version "2.45.1"
  sha256 "aa1b3211e54bc7aea1c8e9b1c7a239ecb8b7fc42eb75e062396fa15b816f6db8"

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
