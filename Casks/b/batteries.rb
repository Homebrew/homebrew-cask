cask "batteries" do
  version "3.0.2"
  sha256 "33f1cf5e6af2087f3720e80239f78f09d31734d11d3d60b54a41a0dbf566b9e2"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg"
  name "Batteries"
  desc "Track all your devices' batteries"
  homepage "https://www.fadel.io/batteries/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Batteries.app"

  uninstall launchctl: "io.fadel.Batteries.Helper"

  zap trash: [
    "~/Library/Application Scripts/io.fadel.Batteries.BatteriesTodayExtension",
    "~/Library/Application Scripts/io.fadel.Batteries.Widget",
    "~/Library/Application Scripts/KUC6B4JW25.io.fadel.Batteries",
    "~/Library/Caches/io.fadel.Batteries",
    "~/Library/Caches/io.fadel.Batteries.Helper",
    "~/Library/Containers/io.fadel.Batteries.BatteriesTodayExtension",
    "~/Library/Containers/io.fadel.Batteries.Widget",
    "~/Library/Group Containers/KUC6B4JW25.io.fadel.Batteries",
    "~/Library/HTTPStorages/io.fadel.Batteries*",
    "~/Library/Preferences/io.fadel.Batteries.Helper.plist",
    "~/Library/Preferences/io.fadel.Batteries.plist",
  ]
end
