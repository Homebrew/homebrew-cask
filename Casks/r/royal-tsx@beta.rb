cask "royal-tsx@beta" do
  version "26.0.11.0"
  sha256 "01674819be539d2d4a532bdfc69eaebb6febbf3dc1b6d8539673ccea54c9a407"

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
