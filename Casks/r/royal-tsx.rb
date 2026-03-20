cask "royal-tsx" do
  version "6.4.1.1000"
  sha256 "5bcf53703969a3abc1397d0e05b4b15f2332e9d4400659470e8fda90694bdfd5"

  url "https://royaltsx-v#{version.major}.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_stable.php"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "royal-tsx@beta"
  depends_on macos: ">= :big_sur"

  app "Royal TSX.app"

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
