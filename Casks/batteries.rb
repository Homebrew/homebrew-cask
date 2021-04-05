cask "batteries" do
  version "2.1"
  sha256 "43ec605e91bdc30348b81a7c2d4929c95480e9f03d0524f526b9035eecdb4991"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg",
      verified: "github.com/ronyfadel/BatteriesReleases/"
  name "Batteries"
  homepage "https://www.fadel.io/batteries/"

  depends_on macos: ">= :mojave"

  app "Batteries.app"

  zap trash: [
    "~/Library/Caches/io.fadel.Batteries",
    "~/Library/Caches/io.fadel.Batteries.Helper",
    "~/Library/Containers/io.fadel.Batteries.BatteriesTodayExtension",
    "~/Library/Preferences/io.fadel.Batteries.Helper.plist",
    "~/Library/Preferences/io.fadel.Batteries.plist",
    "~/Library/Group Containers/KUC6B4JW25.io.fadel.Batteries",
    "~/Library/Application Scripts/io.fadel.Batteries.BatteriesTodayExtension",
  ]
end
