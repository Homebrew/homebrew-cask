cask "macparakeet" do
  version "0.6.21"
  sha256 "1179db1673496b42e6bf669aebec4a4660d520540da1a012d765aee71b7db2b4"

  url "https://github.com/moona3k/macparakeet/releases/download/v#{version}/MacParakeet-#{version}.dmg",
      verified: "github.com/moona3k/macparakeet/"
  name "MacParakeet"
  desc "Local speech-to-text, transcription, and meeting recording"
  homepage "https://macparakeet.com/"

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
  ]
end
