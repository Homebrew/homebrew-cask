cask "fing-desktop" do
  version "2.1.0"
  sha256 "4a9bb7c0fb8531cacc60fd4247c55ae322224cf300ecb67de303710bf9773631"

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
