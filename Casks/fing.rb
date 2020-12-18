cask "fing" do
  version "2.4.1"
  sha256 :no_check

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
