cask "lunar" do
  version "5.5.4"
  sha256 "cf0dcd553b1ffdc2caf12ea9d13b811cba617f41ba59081e2a4b848e0e7b06fe"

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
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
