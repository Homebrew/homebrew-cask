cask "spotmenu" do
  version "1.9"
  sha256 "306fc07e2fa2987bd46eae15012808ab2341e47bc56c7b0ebef151752155fd6f"

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  name "SpotMenu"
  desc "Spotify and iTunes in the menu bar"
  homepage "https://github.com/kmikiy/SpotMenu"

  auto_updates true

  app "SpotMenu.app"

  uninstall quit:       "com.KMikiy.SpotMenu",
            login_item: "SpotMenu"

  zap trash: [
    "~/Library/Application Scripts/com.KMikiy.SpotMenu.SpotMenuToday",
    "~/Library/Application Support/com.KMikiy.SpotMenu",
    "~/Library/Containers/com.KMikiy.SpotMenu.SpotMenuToday",
    "~/Library/Group Containers/group.KMikiy.SpotMenu",
    "~/Library/Preferences/com.KMikiy.SpotMenu.plist",
  ]

  caveats do
    requires_rosetta
  end
end
