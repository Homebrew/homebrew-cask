cask "backdrop" do
  version "3.0,9801"
  sha256 "e3b1d40de18e24c7b8ec34f7027b9b8786e45690c0277e8a6c1c9a569c7223f7"

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
