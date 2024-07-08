cask "aldente" do
  version "1.27.3"
  sha256 "1ba2a97f2d4b135546fe74e4b38294e9da132997894fa824e89b4a994132e852"

  url "https://github.com/AppHouseKitchen/AlDente-Charge-Limiter/releases/download/#{version}/AlDente.dmg",
      verified: "github.com/AppHouseKitchen/AlDente-Charge-Limiter/"
  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://apphousekitchen.com/"

  livecheck do
    url :url
    strategy :github_latest
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
