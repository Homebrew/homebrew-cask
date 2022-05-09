cask "lunar" do
  version "5.6.4"
  sha256 "a634c75b148cab31e30ebc3847d27190beff37fb00d33bae1e348f3d194be648"

  url "https://static.lunar.fyi/releases/Lunar-#{version}.dmg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    # The sparkle strategy cannot be used because we need to skip alpha releases in the appcast
    url "https://static.lunar.fyi/appcast2.xml"
    regex(/url=.*?Lunar[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Lunar.app"

  zap trash: [
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
