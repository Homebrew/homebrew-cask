cask "openwhispr" do
  arch arm: "-arm64"

  version "1.8.0"
  sha256 arm:   "044e39356fe6e5628739635bb4e0f6c05e4d1beb7094b0b113efa3cdcac5ebcb",
         intel: "65323a9a8a09f939b21c904aa4e6d1188f2b382ea70c5981f3a8184b826af52c"

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
