cask "lumide" do
  version "0.18.2"
  sha256 "e9ad52992dd7cc6c4cd62e1a8f55e34eeaa824b0533d9530e11869af726baa75"

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
