cask "lumide" do
  version "0.22.0"
  sha256 "d9b04502573974321e7dc8105b46c1c3c9e9d33548c249dfbfa7af87a05e945b"

  url "https://github.com/SoFluffyOS/lumide/releases/download/#{version}/Lumide-macOS-#{version}.dmg"
  name "Lumide"
  desc "Agent-native code editor"
  homepage "https://lumide.dev/"

  depends_on macos: :monterey

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
