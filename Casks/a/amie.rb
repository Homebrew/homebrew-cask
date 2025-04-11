cask "amie" do
  arch arm: "-arm64"

  version "250410.0.2"
  sha256 arm:   "db769e06b133ec1546639e225d8411398c090582b68b49cdf927d41cc715c582",
         intel: "6cd2d43fcd8303634a9125062f0d84b7c7888dbf6133f8402acd8d5261bc193b"

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
