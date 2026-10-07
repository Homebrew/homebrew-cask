cask "glean" do
  version "1.2026.27816"
  sha256 "f694ef05f7b84422f47573392e3f2e862d68f1873382ab041984de3cf74557c5"

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
    "~/Library/Application Support/CrashReporter/Glean_*.plist",
    "~/Library/Application Support/Glean",
    "~/Library/Containers/com.glean.desktop",
    "~/Library/Group Containers/877XN49FUQ.com.glean.desktop",
    "~/Library/Logs/Glean",
    "~/Library/Preferences/com.glean.desktop.plist",
  ]
end
