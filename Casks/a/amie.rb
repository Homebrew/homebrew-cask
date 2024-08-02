cask "amie" do
  arch arm: "-arm64"

  version "240802.0.0"
  sha256 arm:   "dd8913687ce63d883e2edad516c6fe4fd959a2b9e83751429e66493aa318eaab",
         intel: "343b72b85857e8463e7a0355b1dda8012ed361e891fce94639b4e0c9d705ebf6"

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
