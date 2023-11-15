cask "fing" do
  version "3.5.1"
  sha256 "05d52b3e405cd809bba05e6fb29b6460593c6fadcf962a46ae4c12d82a889ad6"

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
    "~/Library/Logs/Fing",
    "~/Library/Preferences/com.fing.app.plist",
    "~/Library/Saved Application State/com.fing.app.savedState",
  ]
end
