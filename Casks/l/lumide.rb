cask "lumide" do
  version "0.20.0"
  sha256 "44b1e435203140723355b9758614c2e7d3eb3f2bc3df3167fafc3b3117349402"

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
