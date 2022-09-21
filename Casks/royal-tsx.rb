cask "royal-tsx" do
  version "5.1.1.1000"
  sha256 "865638de4c33c1e67d0bffd681bdb3dc8ef3949017d08ba6f5bf57b2de15118a"

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
