cask "batteries" do
  version "2.1.1"
  sha256 "4b97613341c0f81001ad4880910af41ec5e7d4e680e120498a13d43aa39fb03e"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg",
      verified: "github.com/ronyfadel/BatteriesReleases/"
  name "Batteries"
  desc "Track all your devices' batteries"
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
