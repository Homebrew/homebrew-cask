cask "bettermacwidgets" do
  version "2.3.4"
  sha256 "dc18078df26bbb61a35551da46cfffbdb9e99fea3e41df758c7d06408b6fff1b"

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
