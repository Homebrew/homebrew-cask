cask "fing" do
  version "3.7.1"
  sha256 "99bb1add509fbdc345fff858fc004fd6f18803f708e7dc0b3d97a93843295848"

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

  caveats do
    requires_rosetta
  end
end
