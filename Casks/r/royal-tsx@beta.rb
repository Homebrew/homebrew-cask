cask "royal-tsx@beta" do
  version "26.0.16.0"
  sha256 "7495cb882eb216a06be7d402ae3ea9c9103319f5acbdc6a3b877e2e2d1a3abc9"

  url "https://royaltsx-v#{version.major}.royalapps.com/app/updates/downloads/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features-beta"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/app/updates"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "royal-tsx"
  depends_on macos: :sonoma

  app "Royal TSX.app"

  uninstall quit: "com.lemonmojo.RoyalTSX.App"

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/HTTPStorages/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
