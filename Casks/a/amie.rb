cask "amie" do
  arch arm: "-arm64"

  version "240402.0.5"
  sha256 arm:   "1689d7d768b41c2287647be605f3e1222e27b11b540ca2926daaee9d63a41609",
         intel: "91ccdcf1dcd954ad014c84e934806b0db379c84ab6eaaf5f5a046a952599508b"

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
