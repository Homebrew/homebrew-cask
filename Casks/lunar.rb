cask "lunar" do
  version "4.0.4"
  sha256 "072ee4f7a1294e5239713471abe154c3ad04a17b97a1a4c17d96a54e6dbe58e7"

  url "https://static.lunar.fyi/releases/Lunar-#{version}.pkg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://static.lunar.fyi/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Lunar-#{version}.pkg"

  uninstall pkgutil: "fyi.lunar.Lunar"

  zap trash: [
    "~/Library/Application Support/Lunar",
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
