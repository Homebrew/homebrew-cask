cask "royal-tsx@beta" do
  version "26.0.2.0"
  sha256 "9277e37c122bce734848370bd5a3cee4b001d767d85cfa58396f13858d680ff9"

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
    "~/Library/Preferences/com.lemonmojo.RoyalTSX.App.plist",
  ]
end
