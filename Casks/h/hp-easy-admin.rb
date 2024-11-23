cask "hp-easy-admin" do
  version "2.15.0,240916"
  sha256 :no_check

  url "https://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/Applications/HP_Easy_Admin.app.zip"
  name "HP Easy Admin"
  desc "Tool to directly download HP printing and/or scanning drivers"
  homepage "https://support.hp.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "HP Easy Admin.app"

  zap trash: [
    "~/Library/Caches/com.hp.hp-easy-admin",
    "~/Library/HTTPStorages/com.hp.hp-easy-admin",
    "~/Library/Logs/HP Easy Admin.log",
    "~/Library/Preferences/com.hp.hp-easy-admin.plist",
    "~/Library/Saved Application State/com.hp.hp-easy-admin.savedState",
  ]
end
