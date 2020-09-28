cask "fing" do
  version "2.2.1"
  sha256 "cb9801d77642fba75683eda89c26672a82151a34ae398fd2b2bc2d777b8cfbfc"

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
