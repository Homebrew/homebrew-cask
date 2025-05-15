cask "aldente" do
  version "1.33"
  sha256 "7835425bf590268825158c23a707e4cd0dc1a72ed0d28419d848942a25eb5955"

  url "https://apphousekitchen.com/aldente/AlDente#{version}.dmg"
  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://apphousekitchen.com/"

  livecheck do
    url "https://apphousekitchen.com/aldente/aldenteproappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AlDente.app"

  uninstall launchctl:  "com.apphousekitchen.aldente-pro.helper",
            quit:       "com.apphousekitchen.aldente-pro",
            login_item: "AlDente",
            delete:     "/Library/PrivilegedHelperTools/com.apphousekitchen.aldente-pro.helper"

  zap trash: [
    "~/Library/Application Support/AlDente",
    "~/Library/Caches/com.apphousekitchen.aldente-pro",
    "~/Library/HTTPStorages/com.apphousekitchen.aldente-pro",
    "~/Library/HTTPStorages/com.apphousekitchen.aldente-pro.binarycookies",
    "~/Library/Preferences/com.apphousekitchen.aldente-pro.plist",
    "~/Library/Preferences/com.apphousekitchen.aldente-pro_backup.plist",
    "~/Library/Preferences/com.apphousekitchen.aldente-pro_stats.sqlite3",
  ]
end
