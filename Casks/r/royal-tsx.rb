cask "royal-tsx" do
  version "6.4.5.1000"
  sha256 "aea06877ff32bba0c9627b162e3bb44473551936708e6a931b95a1ece4127454"

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
  depends_on :macos

  app "Royal TSX.app"

  uninstall quit: "com.lemonmojo.RoyalTSX.App"

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
