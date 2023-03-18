cask "lunar" do
  version "6.0.1"
  sha256 "8a68a0aa6f4a07220e401ed8ff1614eac428c3c126130686a34065334806c155"

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
