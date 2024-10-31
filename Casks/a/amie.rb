cask "amie" do
  arch arm: "-arm64"

  version "241031.0.0"
  sha256 arm:   "34c37cf366ee753ebe00d7126995b6ac4bf067e39cc1a9756f2828970d232e0f",
         intel: "c732fc13dca39184e44197bdae626186751fc691a5a10c615af6368477640c8e"

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
