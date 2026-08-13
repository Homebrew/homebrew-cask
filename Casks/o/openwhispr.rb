cask "openwhispr" do
  arch arm: "-arm64"

  version "1.8.3"
  sha256 arm:   "681e7616ac4dcdb130651939aba4f56bcb1565620a271f9c4ddf8863487a27cb",
         intel: "2d40ee4c4774518da480acbd5980a94f82369ca3a4c45fa85fc3739b16bfe715"

  url "https://github.com/OpenWhispr/openwhispr/releases/download/v#{version}/OpenWhispr-#{version}#{arch}.dmg"
  name "OpenWhispr"
  desc "Privacy-first voice-to-text dictation with AI agents"
  homepage "https://github.com/OpenWhispr/openwhispr"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
    "~/Library/Saved Application State/com.gizmolabs.openwhispr.savedState",
  ]
end
