cask "fing" do
  version "3.7.2"
  sha256 "67842b7a9f32ea08d460be4d5447d6f3334b8f240bc7ffdeae6ba37696f2259e"

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
