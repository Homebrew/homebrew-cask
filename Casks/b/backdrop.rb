cask "backdrop" do
  version "2.6.20,126"
  sha256 "8b49fcbf8fa24d2f0ca6e08da05faf0481ca9d3c8c3ce93bf8853e21573d954c"

  url "https://cdn.cindori.com/apps/backdrop/updates/#{version.csv.first}-#{version.csv.second}/Backdrop.dmg"
  name "Backdrop"
  desc "Live wallpaper app"
  homepage "https://cindori.com/backdrop"

  livecheck do
    url "https://cdn.cindori.com/apps/backdrop/updates/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Backdrop.app"

  uninstall quit: [
    "com.cindori.Backdrop",
    "com.cindori.Backdrop.Wallpaper",
  ]

  zap trash: [
    "~/Library/Application Scripts/*.group.com.cindori.Backdrop",
    "~/Library/Application Support/Backdrop",
    "~/Library/Application Support/BackdropWallpaper",
    "~/Library/Group Containers/*.group.com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop.Wallpaper",
    "~/Library/Preferences/com.cindori.Backdrop.plist",
  ]
end
