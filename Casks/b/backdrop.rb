cask "backdrop" do
  version "2.6.18,122"
  sha256 "71ef3afa55771ea4244b2e101f1c2de86696b1ec5acd2e3b97663ee081bc8481"

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
