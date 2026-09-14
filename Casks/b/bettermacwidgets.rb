cask "bettermacwidgets" do
  version "2.2.5"
  sha256 "88a40b273cc647e4a2d0664ea19ed750371300a6645b4c8b84c4e894d5d2e434"

  url "https://bettermacwidgets.de/BetterMacWidgets-#{version}.dmg"
  name "BetterMacWidgets"
  desc "Live-animated widgets that sit on the desktop"
  homepage "https://bettermacwidgets.de/"

  livecheck do
    url "https://bettermacwidgets.de/appcast.xml"
    # The download URL carries only the short version, so compare only that — otherwise
    # livecheck reports "2.2.5,50" (short,build) and never matches.
    strategy :sparkle, &:short_version
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BetterMacWidgets.app"

  uninstall quit: "com.bettermacwidgets.app"

  zap trash: [
    "~/Library/Application Support/BetterMacWidgets",
    "~/Library/Caches/com.bettermacwidgets.app",
    "~/Library/Preferences/com.bettermacwidgets.app.plist",
  ]
end
