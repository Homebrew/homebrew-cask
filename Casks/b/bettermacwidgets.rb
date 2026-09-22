cask "bettermacwidgets" do
  version "2.3.10"
  sha256 "77c6bbe116b8e4f949bf7cbcd0fafeed4487735716e54fabf552645ed1334fbb"

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
