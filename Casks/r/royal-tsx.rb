cask "royal-tsx" do
  version "6.0.0.1000"
  sha256 "84daa7560a380c84e86b4e75050f786d7ad23c5439c124590de67769a456896d"

  url "https://royaltsx-v#{version.major}.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_stable.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Royal TSX.app"

  zap trash: [
    "~/Library/Application Support/Royal TSX",
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
