cask "amie" do
  arch arm: "-arm64"

  version "240131.0.2"
  sha256 arm:   "9b50df1ce13284a4998467e656f2c8a249c455caad04243f413c3836b731636b",
         intel: "5b45dbe35a69d38cdf7ca4a2b3312586adc891f52d55358845fd2b5e5621a194"

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
