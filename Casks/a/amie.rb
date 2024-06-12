cask "amie" do
  arch arm: "-arm64"

  version "240611.0.1"
  sha256 arm:   "9b7c3d51ea0358c9a107494cd11db7ed4635dea9b390b1647065957a663d0eab",
         intel: "f339ede2131d638504bfa138b6c2f3e523cf0577a0b6490c89962e90ed7ab8bd"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
