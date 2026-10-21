cask "lumide" do
  version "0.24.0"
  sha256 "72159041315faca937ade8eb40fbcf41c875b3c46c2ad11cabaf9bc2943c8515"

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
