cask "amie" do
  arch arm: "-arm64"

  version "240911.0.2"
  sha256 arm:   "0a881c4fc1a299f9ec8d617b48e8957b55f326928b312a3dfec1e0bd66afbf88",
         intel: "bd4499792eed8c7312ba4e3d611ea7c8b853e7bf7307b86c9d4629469d60b235"

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
