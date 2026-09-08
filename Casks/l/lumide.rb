cask "lumide" do
  version "0.21.0"
  sha256 "0e5bb29e349fd54ff97183e977180a617be82c18b5d9945c1c44e2b0b07f58c5"

  url "https://github.com/SoFluffyOS/lumide/releases/download/#{version}/Lumide-macOS-#{version}.dmg"
  name "Lumide"
  desc "Agent-native code editor"
  homepage "https://lumide.dev/"

  depends_on :macos

  app "Lumide.app"

  uninstall quit: "io.sofluffy.lumide"

  zap trash: [
    "~/Library/Application Support/io.sofluffy.lumide",
    "~/Library/Caches/io.sofluffy.lumide",
    "~/Library/HTTPStorages/io.sofluffy.lumide",
    "~/Library/Preferences/io.sofluffy.lumide.plist",
    "~/Library/Saved Application State/io.sofluffy.lumide.savedState",
  ]
end
