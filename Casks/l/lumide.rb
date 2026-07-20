cask "lumide" do
  version "0.16.0"
  sha256 "2013574ac14d973e157582f6af8802f0b3b68ed823898709f7997c2be16194d1"

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
