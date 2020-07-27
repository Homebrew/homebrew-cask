cask "batteries" do
  version "2.0.1"
  sha256 "9b4ec9875d6977392c182a9032ebead5857713bf9f78f7e78df29a7d8c592c1f"

  # github.com/ronyfadel/BatteriesReleases was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg"
  appcast "https://github.com/ronyfadel/BatteriesReleases/releases.atom"
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
