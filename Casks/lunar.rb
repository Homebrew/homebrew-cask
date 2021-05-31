cask "lunar" do
  version "4.0.5"
  sha256 "e9b4d8ec4d9bef81212b5362d49abdec0dd1057c01fc8b58fc51ced9efc644eb"

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
