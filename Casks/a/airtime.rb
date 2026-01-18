cask "airtime" do
  version :latest
  sha256 :no_check

  url "https://updates.airtimetools.com/mac/hybrid/AirtimeCamera.dmg",
      verified: "updates.airtimetools.com/"
  name "Airtime"
  desc "Application for video presentations & meetings"
  homepage "https://www.airtime.com/"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Airtime.app"

  zap trash: [
    "/private/var/db/receipts/app.mmhmm.hybrid.bom",
    "/private/var/db/receipts/app.mmhmm.hybrid.plist",
    "~/Library/Application Scripts/M3KUT44L48.app.mmhmm.hybrid",
    "~/Library/Application Scripts/M3KUT44L48.app.mmhmm.hybrid.menu",
    "~/Library/Caches/app.mmhmm.hybrid",
    "~/Library/Caches/app.mmhmm.hybrid.helper.plugin",
    "~/Library/Group Containers/M3KUT44L48.app.mmhmm.hybrid",
    "~/Library/HTTPStorages/app.mmhmm.hybrid",
    "~/Library/Preferences/app.mmhmm.hybrid.plist",
  ]
end
