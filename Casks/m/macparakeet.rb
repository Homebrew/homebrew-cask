cask "macparakeet" do
  version "0.7.3"
  sha256 "0c4ccb1b6f0cedae0f7994afce393094596aacdd8548af374ae18ae500ecdd8a"

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
