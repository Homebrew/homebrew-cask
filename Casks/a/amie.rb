cask "amie" do
  arch arm: "-arm64"

  version "260827.0.0"
  sha256 arm:   "16f812d2ce211ad15e2305ff4dacecd65bdf1f6a8618afd19e481816924c6da0",
         intel: "ec3d0d7d01c401c36222ca38a6d25674dae30240fd0d498717367b1435b0d17f"

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
