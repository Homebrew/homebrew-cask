cask "fing" do
  version "2.3.0"
  sha256 "f92655a475d0250078e988d394869bfe0016c85fcc099948f07d44a2ec23a1fb"

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
