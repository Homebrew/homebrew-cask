cask "lunar" do
  version "6.8.1"
  sha256 "16742869117798cb8424ee7ee1c20ccd79864306a533f83fe59409bb4680e02e"

  url "https://static.lunar.fyi/releases/Lunar-#{version}.dmg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://static.lunar.fyi/appcast-stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Lunar.app"

  zap trash: [
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
