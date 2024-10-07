cask "amie" do
  arch arm: "-arm64"

  version "241007.0.0"
  sha256 arm:   "d4e4bfb75740a73255a2152713a081c797bbbb787845362ee889af61c9339a9d",
         intel: "d429ab23027e4977e1020b6cd7ed5b805c7752bb132dcd76e80bcdbb7d4dd9a9"

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
