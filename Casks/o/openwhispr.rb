cask "openwhispr" do
  arch arm: "-arm64", intel: ""

  version "1.7.5"
  sha256 arm:   "7a26163a30d2a368a8a4d4d6554aa5fd779cda17f01c412bcfaa653ed62d2c92",
         intel: "af49a5454f512822e2f8b927aa9ff572cded1f735bd1fbc6c4c08a9ca62a594d"

  url "https://github.com/OpenWhispr/openwhispr/releases/download/v#{version}/OpenWhispr-#{version}#{arch}.dmg"
  name "OpenWhispr"
  desc "Privacy-first voice-to-text dictation with AI agents"
  homepage "https://github.com/OpenWhispr/openwhispr"

  livecheck do
    url :url
    strategy :github_latest
  end

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
  ]
end
