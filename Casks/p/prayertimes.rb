cask "prayertimes" do
  version "2.3.0"
  sha256 "28439f45535bf275c23c20b81889c2ba7f2f1ef50933e4822a1433a608bb5805"

  url "https://github.com/abd3lraouf/PrayerTimes/releases/download/v#{version}/PrayerTimes-#{version}.dmg"
  name "PrayerTimes"
  desc "Menu bar app for Islamic prayer times with Hijri calendar"
  homepage "https://github.com/abd3lraouf/PrayerTimes"

  app "PrayerTimes.app"

  uninstall quit: "com.abd3lraouf.PrayerTimes"

  zap trash: [
    "~/Library/Preferences/com.abd3lraouf.PrayerTimes.plist",
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end

