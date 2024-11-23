cask "batteries" do
  version "2.3.3"
  sha256 "c04e1941026c449d878ad1eafafd08683a9ace7113ac4f1457d9efb9938316ad"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg",
      verified: "github.com/ronyfadel/BatteriesReleases/"
  name "Batteries"
  desc "Track all your devices' batteries"
  homepage "https://www.fadel.io/batteries/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Batteries.app"

  zap trash: [
    "~/Library/Application Scripts/io.fadel.Batteries.BatteriesTodayExtension",
    "~/Library/Caches/io.fadel.Batteries",
    "~/Library/Caches/io.fadel.Batteries.Helper",
    "~/Library/Containers/io.fadel.Batteries.BatteriesTodayExtension",
    "~/Library/Group Containers/KUC6B4JW25.io.fadel.Batteries",
    "~/Library/Preferences/io.fadel.Batteries.Helper.plist",
    "~/Library/Preferences/io.fadel.Batteries.plist",
  ]
end
