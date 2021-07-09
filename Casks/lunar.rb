cask "lunar" do
  version "4.2.3"
  sha256 "a57487a904dd4808a7434e0591b1e01cda9cce97bc6be9f19257c2980b2e8717"

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
