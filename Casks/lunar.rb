cask "lunar" do
  version "4.0.2"
  sha256 "3025429b884e9eb7c6f6d12583e2df37ded558a194a7d943eac0e7e83952f04b"

  url "https://static.lunar.fyi/releases/Lunar-#{version}.pkg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://static.lunar.fyi/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Lunar-#{version}.pkg"

  uninstall pkgutil: "fyi.lunar.Lunar"

  zap trash: [
    "~/Library/Application Support/Lunar",
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
