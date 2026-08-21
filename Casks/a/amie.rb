cask "amie" do
  arch arm: "-arm64"

  version "260821.0.0"
  sha256 arm:   "bc0e4d2ce703ec626ab331484a69c08bf77d96dc6d393fb3f4f3906360960aed",
         intel: "799227a5042bf30e53ae3aff9d23b431e36c69c84da43d2a493cc8a9710f0e50"

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
