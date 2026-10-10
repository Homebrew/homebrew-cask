cask "lumide" do
  version "0.23.0"
  sha256 "0374ea7f982c2432871e89c84647e29f132aa993b7d454cc1d787226164a505a"

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
