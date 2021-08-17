cask "lunar" do
  version "4.8.2"
  sha256 "69b14fe5124ca0d4857e68a904c648e61e69ea5c499d0ecaaff6fa67b74e5261"

  url "https://static.lunar.fyi/releases/Lunar-#{version}.dmg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://static.lunar.fyi/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Lunar.app"

  zap trash: [
    "~/Library/Caches/Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
