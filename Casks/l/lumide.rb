cask "lumide" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.26.0"
  sha256 arm:   "058dfe2abb793789690630926ac67380f01a9922242eedeb515ab5e59787fead",
         intel: "5d1088b8fdeaf0d97b553a7f4eabb245f9f335b7b1311ac11d69896cdb2c9cf1"

  url "https://github.com/SoFluffyOS/lumide/releases/download/#{version}/Lumide-#{arch}-#{version}.dmg"
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
