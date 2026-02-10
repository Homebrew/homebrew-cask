cask "batteries" do
  version "3.0.0"
  sha256 "353edbc85cb6255192599cc64dd9bc81a6fd64e6b0dd77f0c6a63559f7512a99"

  url "https://github.com/ronyfadel/BatteriesReleases/releases/download/v#{version}/Batteries.dmg",
      verified: "github.com/ronyfadel/BatteriesReleases/"
  name "Batteries"
  desc "Track all your devices' batteries"
  homepage "https://www.fadel.io/batteries/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

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
