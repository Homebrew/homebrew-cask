cask "aldente" do
  version "1.23,45"
  sha256 "346b851998d5a7180ead300072b7c8da8a37c8b08dabb8dda6cae43f17c19d76"

  url "https://apphousekitchen.com/aldente/AlDente#{version.csv.first}.dmg"
  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://apphousekitchen.com/"

  livecheck do
    url "https://apphousekitchen.com/aldente/AlDente-Pro.dmg"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AlDente.app"

  uninstall quit:       "com.apphousekitchen.aldente-pro",
            launchctl:  "com.apphousekitchen.aldente-pro.helper",
            login_item: "AlDente",
            delete:     "/Library/PrivilegedHelperTools/com.apphousekitchen.aldente-pro.helper"

  zap trash: [
    "~/Library/Application Support/AlDente",
    "~/Library/Caches/com.apphousekitchen.aldente-pro",
    "~/Library/HTTPStorages/com.apphousekitchen.aldente-pro.binarycookies",
    "~/Library/Preferences/com.apphousekitchen.aldente-pro_backup.plist",
    "~/Library/Preferences/com.apphousekitchen.aldente-pro.plist",
  ]
end
