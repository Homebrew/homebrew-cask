cask "amie" do
  arch arm: "-arm64"

  version "251203.0.0"
  sha256 arm:   "c78d472e95ab9f59b31049c5e556e32b95d38d3c963afdc007d472625ea89458",
         intel: "3d169fae1f44fbe394c16cc4914553eec24524c653093567bca52cfa5981adf7"

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
