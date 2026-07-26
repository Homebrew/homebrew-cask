cask "lumide" do
  version "0.17.0"
  sha256 "cb1fd6cad5a98d89eca5173416224204204f09a3853e514655d1d35f90a620a7"

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
