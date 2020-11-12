cask "batteries" do
  version "2.0.2"
  sha256 "e808ed1c982fc66cb5638b7eb2c1d2e80e0271326e93bbb938b62dbb139ce6a7"

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
