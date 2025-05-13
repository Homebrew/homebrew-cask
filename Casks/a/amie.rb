cask "amie" do
  arch arm: "-arm64"

  version "250513.0.0"
  sha256 arm:   "05a93bdcdec163888f6395e855333c753b64145b22a9712371dc9dcdac92b43e",
         intel: "1d36fcc95d9cfde5652dd76319d1c9f452e22cbf6d5c2deb7467414086b23c10"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
