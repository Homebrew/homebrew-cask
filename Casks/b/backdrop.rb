cask "backdrop" do
  version "2.10.4,145"
  sha256 "f55f25fb4a2549bf4112af72c594448d095bcceaab5b2a507e7a9787cadc614f"

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

  uninstall launchctl: [
              "com.cindori.Backdrop.Wallpaper.agent",
              "com.cindori.Backdrop.Wallpaper.renderer",
            ],
            quit:      [
              "com.cindori.Backdrop",
              "com.cindori.Backdrop.Wallpaper",
            ]

  zap trash: [
    "~/Library/Application Scripts/*.group.com.cindori.Backdrop",
    "~/Library/Application Scripts/com.cindori.Backdrop.WallpaperExtension",
    "~/Library/Application Support/Backdrop",
    "~/Library/Application Support/BackdropWallpaper",
    "~/Library/Application Support/com.cindori.Backdrop*",
    "~/Library/Caches/com.cindori.Backdrop*",
    "~/Library/Containers/com.cindori.Backdrop.WallpaperExtension",
    "~/Library/Group Containers/*.group.com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop.Wallpaper",
    "~/Library/Preferences/com.cindori.Backdrop.plist",
    "~/Library/Preferences/com.cindori.Backdrop.Wallpaper.plist",
  ]
end
