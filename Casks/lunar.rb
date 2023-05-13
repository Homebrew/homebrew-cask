cask "lunar" do
  version "6.1.3"
  sha256 "cac4089672d562ce5fd72ab6b5b9ab55d544779c1362150399b7bc392a9aff02"

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
