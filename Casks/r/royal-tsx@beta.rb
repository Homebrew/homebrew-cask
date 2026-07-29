cask "royal-tsx@beta" do
  version "26.0.8.0"
  sha256 "571e9b28ef3feb36c9657e856e6fcd3c2049c66ff61eba5eea74d6ddcf2473f6"

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

  zap trash: [
    "~/Library/Application Support/com.lemonmojo.RoyalTSX.App",
    "~/Library/Application Support/Royal TSX",
    "~/Library/Caches/com.lemonmojo.RoyalTSX.App",
    "~/Library/HTTPStorages/com.lemonmojo.RoyalTSX.App",
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
