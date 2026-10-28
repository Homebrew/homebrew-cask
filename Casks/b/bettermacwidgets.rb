cask "bettermacwidgets" do
  version "2.10.0"
  sha256 "45472d78b0a37c26c4be665e9d234de26dc8b4313fd88fe7de2fb7c28bacdb2d"

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
