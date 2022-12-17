cask "batteries" do
  version "2.2.6"
  sha256 "b5c7afeca7bb0ae5aae9d6ea04c8b57728f59be45758c2e26422baa85be9b418"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg",
      verified: "github.com/ronyfadel/BatteriesReleases/"
  name "Batteries"
  desc "Track all your devices' batteries"
  homepage "https://www.fadel.io/batteries/"

  depends_on macos: ">= :mojave"

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
