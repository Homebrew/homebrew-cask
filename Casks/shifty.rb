cask "shifty" do
  version "1.1.2"
  sha256 "71daedf1504907ac1ba59f478978da1c50bd78ddce846f4c1cf967462a40753a"

  # github.com/thompsonate/Shifty/ was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/v#{version}/Shifty-#{version}.zip"
  appcast "https://github.com/thompsonate/Shifty/releases.atom"
  name "Shifty"
  desc "Menu bar app that provides more control over Night Shift"
  homepage "https://shifty.natethompson.io/"

  depends_on macos: ">= :sierra"

  app "Shifty.app"

  uninstall launchctl: "io.natethompson.ShiftyHelper",
            quit:      "io.natethompson.Shifty"

  zap trash: [
    "~/Library/Application Scripts/io.natethompson.ShiftyHelper",
    "~/Library/Application Support/io.natethompson.Shifty",
    "~/Library/Caches/com.crashlytics.data/io.natethompson.Shifty",
    "~/Library/Caches/io.fabric.sdk.mac.data/io.natethompson.Shifty",
    "~/Library/Caches/io.natethompson.Shifty",
    "~/Library/Containers/io.natethompson.ShiftyHelper",
    "~/Library/Preferences/io.natethompson.Shifty.plist",
  ]
end
