cask "fing" do
  version "2.2.2"
  sha256 "585e869c5d5922dd892a59c10a24e5a7ee811bf0bc8d48d95df9c4da9703202c"

  url "https://get.fing.com/fing-desktop-releases/mac/Fing.dmg"
  appcast "https://get.fing.com/fing-desktop-releases/mac/latest-mac.yml"
  name "Fing Desktop"
  homepage "https://www.fing.com/products/fing-desktop"

  app "Fing.app"

  uninstall launchctl: "com.fing.service"

  zap trash: [
    "~/Library/Application Support/Fing",
    "~/Library/Preferences/com.fing.app.plist",
    "~/Library/Saved Application State/com.fing.app.savedState",
  ]
end
