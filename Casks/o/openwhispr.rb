cask "openwhispr" do
  arch arm: "-arm64"

  version "1.8.1"
  sha256 arm:   "2561e594f34d035f29c86cf6e6c3856023c5c87edf6fd0f54c38da75c5a25ea7",
         intel: "ee8784e7d6d2878a5afd7180673b7181fac8099bd8d3b8b35d3599b0b1a9a7db"

  url "https://github.com/OpenWhispr/openwhispr/releases/download/v#{version}/OpenWhispr-#{version}#{arch}.dmg"
  name "OpenWhispr"
  desc "Privacy-first voice-to-text dictation with AI agents"
  homepage "https://github.com/OpenWhispr/openwhispr"

  auto_updates true
  depends_on macos: :monterey

  app "OpenWhispr.app"

  zap trash: [
    "~/.cache/openwhispr",
    "~/.openwhispr",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gizmolabs.openwhispr.sfl*",
    "~/Library/Application Support/open-whispr",
    "~/Library/Caches/com.gizmolabs.openwhispr",
    "~/Library/Caches/com.gizmolabs.openwhispr.ShipIt",
    "~/Library/Caches/open-whispr-updater",
    "~/Library/HTTPStorages/com.gizmolabs.openwhispr",
    "~/Library/Preferences/ByHost/com.gizmolabs.openwhispr.ShipIt.*.plist",
    "~/Library/Preferences/com.gizmolabs.openwhispr.plist",
    "~/Library/Saved Application State/com.gizmolabs.openwhispr.savedState",
  ]
end
