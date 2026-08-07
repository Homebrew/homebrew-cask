cask "pally" do
  version "0.1.14,181.1"
  sha256 "7ef44a98e3fd4685d5a024173da38b4dab3d45cb2b9698129e8801500d2c722f"

  url "https://downloads.pally.com/companion/Pally-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Pally Companion"
  desc "Companion app for the Pally personal assistant"
  homepage "https://pally.com/"

  livecheck do
    url "https://downloads.pally.com/companion/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "PallyCompanion.app"

  zap trash: [
    "~/Library/Application Support/pallykit",
    "~/Library/Caches/com.pally.companion-kit",
    "~/Library/Logs/pallykit",
    "~/Library/Preferences/com.pally.companion-kit.plist",
    "~/Library/Saved Application State/com.pally.companion-kit.savedState",
  ]
end
