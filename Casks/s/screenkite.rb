cask "screenkite" do
  version "1.12.0,581"
  sha256 "716bfa39f00d7bb9cacd938dc146d6ab4cf498ce5b03d3e4f29b58b803ce0301"

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
  depends_on macos: :sequoia

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
