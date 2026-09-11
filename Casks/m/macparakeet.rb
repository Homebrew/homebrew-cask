cask "macparakeet" do
  version "0.8.0"
  sha256 "a82b5f5e1c64272766e09a1985b627aad41960c6eba3ac7b1b9359927b8da474"

  url "https://github.com/moona3k/macparakeet/releases/download/v#{version}/MacParakeet.dmg"
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

  uninstall quit: "com.macparakeet.MacParakeet"

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
