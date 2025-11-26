cask "amie" do
  arch arm: "-arm64"

  version "251125.0.1"
  sha256 arm:   "08e42ca677d220c9358bce0209890fbc14747f26583ce89f862fa5c45f9ba168",
         intel: "77e2193f1e7fa43edea7e1194ebb5074d45ee10a7e1f7bd115dcb77c0e56d105"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
