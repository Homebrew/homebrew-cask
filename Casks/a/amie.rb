cask "amie" do
  arch arm: "-arm64"

  version "260922.0.0"
  sha256 arm:   "8ef9ffd54c95ce31cf8e8200442d2b3fa384cb293d71ef752dbc79624f30dcfd",
         intel: "5a6482457e4d59674d9e07c631e6540125b0d0c1bc40a2a15092fdeff41a428c"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip"
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
