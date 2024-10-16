cask "amie" do
  arch arm: "-arm64"

  version "241016.0.0"
  sha256 arm:   "33afbb7e05a2dca4fb7cf6c59cb132c128564f10d7884474be9c383e36e6e9de",
         intel: "b38c2874b798d60c72a89da4b6e9be9bfddafb62e31233a01d7bd0f83e2fc2a5"

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
