cask "pallycompanion" do
  version "0.1.57,314.1"
  sha256 "98bf5b38b24981352166b7be7c779a1cb0adba1a32582df67b3b6768bd52a764"

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
