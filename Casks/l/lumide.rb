cask "lumide" do
  version "0.18.0"
  sha256 "bd32d825a5082fb8b5d1c6c6edcf1563b73414745ed00e357c419b390988f77f"

  url "https://github.com/SoFluffyOS/lumide/releases/download/#{version}/Lumide_macOS.dmg",
      verified: "github.com/SoFluffyOS/lumide/"
  name "Lumide"
  desc "Agent-native code editor"
  homepage "https://lumide.dev/"

  depends_on macos: :catalina

  app "Lumide.app"

  zap trash: [
    "~/Library/Application Support/io.sofluffy.lumide",
    "~/Library/Caches/io.sofluffy.lumide",
    "~/Library/HTTPStorages/io.sofluffy.lumide",
    "~/Library/Preferences/io.sofluffy.lumide.plist",
    "~/Library/Saved Application State/io.sofluffy.lumide.savedState",
  ]
end
