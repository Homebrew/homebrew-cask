cask "pallycompanion" do
  version "0.1.62,341.1"
  sha256 "789a7ecfd3651d48ba0b8a97635ea645e37edfb70ac72019cfacfcb1e45f5849"

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
