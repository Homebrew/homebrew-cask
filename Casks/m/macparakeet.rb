cask "macparakeet" do
  version "0.6.24"
  sha256 "3eb275528ff5346270a6d5c0562d2a7d7bf20d773d0dc3f93655621086c187cf"

  url "https://github.com/moona3k/macparakeet/releases/download/v#{version}/MacParakeet.dmg",
      verified: "github.com/moona3k/macparakeet/"
  name "MacParakeet"
  desc "Local speech-to-text, transcription, and meeting recording"
  homepage "https://macparakeet.com/"

  livecheck do
    url "https://macparakeet.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacParakeet.app"

  zap trash: [
    "~/Library/Application Support/MacParakeet",
    "~/Library/Caches/com.macparakeet.MacParakeet",
    "~/Library/HTTPStorages/com.macparakeet.MacParakeet",
    "~/Library/Logs/MacParakeet",
    "~/Library/Preferences/com.macparakeet.MacParakeet.plist",
    "~/Library/Saved Application State/com.macparakeet.MacParakeet.savedState",
    "~/Library/WebKit/com.macparakeet.MacParakeet",
  ]
end
