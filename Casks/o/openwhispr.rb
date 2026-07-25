cask "openwhispr" do
  arch arm: "-arm64", intel: ""

  version "1.7.6"
  sha256 arm:   "c4114cb665c25a4e1e0a10b59272d5b2af0155f422a8c4550f23656474b648c2",
         intel: "4585922bc52eab9a3dcfd456a52c0d2e34bf1edc54c4035df68cfac78b72969d"

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
