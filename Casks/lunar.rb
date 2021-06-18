cask "lunar" do
  version "4.1.4"
  sha256 "875cb689b4220c04157b7d4edcea36a1d8851e10a48b7a72b83fa50abf3bff48"

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
