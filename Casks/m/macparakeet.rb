cask "macparakeet" do
  version "0.8.2"
  sha256 "85acb1cf55e4cf57e455d15efbae4effeee4cb0a7bf9cd95e29fd5cd3c802755"

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
