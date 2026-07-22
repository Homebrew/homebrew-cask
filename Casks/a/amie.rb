cask "amie" do
  arch arm: "-arm64"

  version "260722.1.0"
  sha256 arm:   "aaa8b9a0ab008f03efcb7ae1e9417fd7060d96849fb0a4a36220c1c7ecc41fd7",
         intel: "3b5501121324057562ba9752d285315a1e4e082c0ab9a694d2835a2d0b36e82f"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: :monterey

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
