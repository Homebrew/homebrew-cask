cask "fing" do
  version "2.7.1"
  sha256 "01dfc3f208ea33a85357e692a75743e41c6b0123663ca833fd0455d7384aafc6"

  url "https://get.fing.com/fing-desktop-releases/mac/Fing-#{version}.dmg"
  name "Fing Desktop"
  desc "Network scanner"
  homepage "https://www.fing.com/products/fing-desktop"

  livecheck do
    url "https://get.fing.com/fing-desktop-releases/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Fing.app"

  uninstall launchctl: "com.fing.service"

  zap trash: [
    "~/Library/Application Support/Fing",
    "~/Library/Preferences/com.fing.app.plist",
    "~/Library/Saved Application State/com.fing.app.savedState",
  ]
end
