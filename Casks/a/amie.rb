cask "amie" do
  arch arm: "-arm64"

  version "240906.0.1"
  sha256 arm:   "b53b5499b5428ce3d904fdf65e0dbc86ec48233f1b2f268c569cf5ad9f79bde5",
         intel: "e6b566cc76778702ecf5bc629c16c15a7a28e2ff110e22cc61bb3eb1a5819c17"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
