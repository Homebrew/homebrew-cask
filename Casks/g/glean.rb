cask "glean" do
  version "1.2026.29912"
  sha256 "4245ebfb7f82b34d496a696b737ac2f5abefa491606c364125cf7cf61856fa21"

  url "https://storage.googleapis.com/glean-downloads/glean-desktop-app/Glean-darwin-universal-#{version}.zip"
  name "Glean Desktop"
  desc "Workplace search and AI assistant"
  homepage "https://www.glean.com/glean-for-desktop"

  livecheck do
    url "https://storage.googleapis.com/glean-downloads/glean-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Glean.app"

  uninstall quit: "com.glean.desktop"

  zap trash: [
    "~/Library/Application Scripts/877XN49FUQ.com.glean.desktop",
    "~/Library/Application Scripts/com.glean.desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.glean.desktop.sfl*",
    "~/Library/Application Support/CrashReporter/Glean_*.plist",
    "~/Library/Application Support/Glean",
    "~/Library/Containers/com.glean.desktop",
    "~/Library/Group Containers/877XN49FUQ.com.glean.desktop",
    "~/Library/Logs/Glean",
    "~/Library/Preferences/com.glean.desktop.plist",
  ]
end
