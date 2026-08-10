cask "lumide" do
  version "0.19.0"
  sha256 "377f26d84c3d4bb5f07c089326785b978c6552226dc32d9a183deff411423789"

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
