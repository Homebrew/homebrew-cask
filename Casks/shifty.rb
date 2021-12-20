cask "shifty" do
  version "1.2"
  sha256 "111b1df97cf5cbca91f4130e6d68d409dbefeffa9fde5f5c92f30f712a7215e9"

  url "https://github.com/thompsonate/Shifty/releases/download/v#{version}/Shifty-#{version}.zip",
      verified: "github.com/thompsonate/Shifty/"
  name "Shifty"
  desc "Menu bar app that provides more control over Night Shift"
  homepage "https://shifty.natethompson.io/"

  auto_updates true
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
