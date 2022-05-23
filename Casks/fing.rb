cask "fing" do
  version "2.10.0"
  sha256 "3e1ecfd57dd92edf7f47e996e5328afb5425167550d58191dd83f95f3e2f39f1"

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
