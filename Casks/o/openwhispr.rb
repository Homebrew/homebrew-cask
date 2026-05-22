cask "openwhispr" do
  arch arm: "-arm64"

  version "1.7.2"
  sha256 arm:   "965c2ebb9c62531409aa5b87e31f6c6b8aed84d3285f1f73ed5ba96d1dfbbb31",
         intel: "601c82ce8273d99df70bce5bd9b93d48159bd180ae28833f42cbc695d3f56753"

  url "https://github.com/OpenWhispr/openwhispr/releases/download/v#{version}/OpenWhispr-#{version}#{arch}.dmg",
      verified: "github.com/OpenWhispr/openwhispr/"
  name "OpenWhispr"
  desc "Voice-to-text dictation with AI cleanup"
  homepage "https://openwhispr.com/"

  livecheck do
    url "https://github.com/OpenWhispr/openwhispr/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "OpenWhispr.app"

  zap trash: [
    "~/Library/Application Support/open-whispr",
    "~/Library/Caches/com.gizmolabs.openwhispr",
    "~/Library/Caches/com.gizmolabs.openwhispr.ShipIt",
    "~/Library/HTTPStorages/com.gizmolabs.openwhispr",
    "~/Library/Logs/open-whispr",
    "~/Library/Preferences/com.gizmolabs.openwhispr.plist",
    "~/Library/Saved Application State/com.gizmolabs.openwhispr.savedState",
  ]
end
