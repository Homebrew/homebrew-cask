cask "airtime" do
  version "2.8.0"
  sha256 :no_check

  url "https://updates.airtimetools.com/mac/hybrid/Airtime.dmg",
      verified: "airtimetools.com/"
  name "Airtime"
  desc "Video tools for camera, recording, and presentation"
  homepage "https://www.airtime.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Airtime.app"

  uninstall quit: "app.mmhmm.hybrid"

  zap trash: [
    "~/Library/Application Scripts/M3KUT44L48.app.mmhmm.hybrid",
    "~/Library/Application Scripts/M3KUT44L48.app.mmhmm.hybrid.menu",
    "~/Library/Application Support/mmhmm",
    "~/Library/Caches/app.mmhmm.hybrid",
    "~/Library/Caches/app.mmhmm.hybrid.helper.plugin",
    "~/Library/Caches/mmhmm",
    "~/Library/Caches/SentryCrash/Airtime",
    "~/Library/Containers/M3KUT44L48.app.mmhmm.hybrid.menu",
    "~/Library/Group Containers/M3KUT44L48.app.mmhmm.hybrid",
    "~/Library/HTTPStorages/app.mmhmm.hybrid",
    "~/Library/Preferences/app.mmhmm.hybrid.plist",
  ]
end
