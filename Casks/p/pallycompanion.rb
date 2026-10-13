cask "pallycompanion" do
  version "0.1.56,312.1"
  sha256 "9e9907503e72e34f11a922f29315d81d533ac4d0afd5f5bef29ac9c725fbf514"

  url "https://downloads.pally.com/companion/Pally-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Pally Companion"
  desc "AI personal assistant you text"
  homepage "https://pally.com/"

  livecheck do
    url "https://downloads.pally.com/companion/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "PallyCompanion.app"

  uninstall quit: "com.pally.companion-kit"

  zap trash: [
    "~/Library/Application Support/pallykit",
    "~/Library/Application Support/PallyKit",
    "~/Library/Caches/com.pally.companion-kit",
    "~/Library/Caches/PallyKit",
    "~/Library/HTTPStorages/com.pally.companion-kit",
    "~/Library/HTTPStorages/com.pally.companion-kit.binarycookies",
    "~/Library/Logs/pallykit",
    "~/Library/Preferences/com.pally.companion-kit.plist",
    "~/Library/WebKit/com.pally.companion-kit",
  ]
end
