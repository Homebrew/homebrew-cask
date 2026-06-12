cask "screenkite" do
  version "1.9.1,468"
  sha256 "bc384a66cd6ac39e72af30a1fe9a48271d037977986d71c8949d9bfca123a00d"

  url "https://downloads.screenkite.com/mac-releases/ScreenKite-#{version.csv.second}.zip"
  name "ScreenKite"
  desc "Screen recorder and editor"
  homepage "https://www.screenkite.com/"

  livecheck do
    url "https://downloads.screenkite.com/mac-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ScreenKite.app"

  zap trash: [
    "~/Library/Application Scripts/com.screenkite.mac.ScreenKitePreviewExtension",
    "~/Library/Application Scripts/com.screenkite.mac.ScreenKiteThumbnailExtension",
    "~/Library/Application Support/com.screenkite.mac",
    "~/Library/Application Support/ScreenKite",
    "~/Library/Caches/com.crashlytics.data/com.screenkite.mac",
    "~/Library/Caches/com.screenkite.mac",
    "~/Library/Containers/com.screenkite.mac.ScreenKitePreviewExtension",
    "~/Library/Containers/com.screenkite.mac.ScreenKiteThumbnailExtension",
    "~/Library/HTTPStorages/com.screenkite.mac",
    "~/Library/HTTPStorages/com.screenkite.mac.binarycookies",
    "~/Library/Logs/ScreenKite",
    "~/Library/Preferences/com.screenkite.mac.plist",
    "~/Library/Saved Application State/com.screenkite.mac.savedState",
    "~/Library/WebKit/com.screenkite.mac",
  ]
end
