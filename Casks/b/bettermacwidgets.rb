cask "bettermacwidgets" do
  version "2.16.0"
  sha256 "c5923f439f9ef33c2a782b533b2298bd711a8a312b9e35ebe85a14f3ad5dca81"

  url "https://bettermacwidgets.de/BetterMacWidgets-#{version}.dmg"
  name "BetterMacWidgets"
  desc "Live-animated widgets that sit on the desktop"
  homepage "https://bettermacwidgets.de/"

  livecheck do
    url "https://bettermacwidgets.de/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BetterMacWidgets.app"

  uninstall quit: "com.bettermacwidgets.app"

  zap trash: [
    "~/Library/Application Support/BetterMacWidgets",
    "~/Library/Caches/com.bettermacwidgets.app",
    "~/Library/HTTPStorages/com.bettermacwidgets.app",
    "~/Library/Preferences/com.bettermacwidgets.app.plist",
  ]
end
