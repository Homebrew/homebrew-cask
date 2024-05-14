cask "amie" do
  arch arm: "-arm64"

  version "240514.0.0"
  sha256 arm:   "f559fc9d52a147fbb282cf2d903158f6196b25648c3195883d83478f9f7490ed",
         intel: "d7ee98fc0c9b9c1dd3e74806fcf8225cf650a95b1f514fd622527d2f400cb5a6"

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
