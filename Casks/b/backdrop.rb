cask "backdrop" do
  version "2.9.1,136"
  sha256 "3e95d1503fd53e419bb67575aa7d8cbbedd2d8f8a6ffd987f459e7a16e77e463"

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
    "~/Library/Application Support/Backdrop",
    "~/Library/Application Support/BackdropWallpaper",
    "~/Library/Application Support/com.cindori.Backdrop*",
    "~/Library/Caches/com.cindori.Backdrop*",
    "~/Library/Group Containers/*.group.com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop",
    "~/Library/HTTPStorages/com.cindori.Backdrop.Wallpaper",
    "~/Library/Preferences/com.cindori.Backdrop.plist",
  ]
end
