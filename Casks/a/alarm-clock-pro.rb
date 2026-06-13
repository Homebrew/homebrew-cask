cask "alarm-clock-pro" do
  version "15.9.3"
  sha256 :no_check

  url "https://www.koingosw.com/products/alarmclockpro/download/alarmclockpro.dmg"
  name "Alarm Clock Pro"
  desc "Schedules alarms, reminders, and timed events with audio playback"
  homepage "https://www.koingosw.com/products/alarmclockpro/"

  livecheck do
    url "https://www.koingosw.com/products/alarmclockpro/"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "Alarm Clock Pro.app"

  zap trash: [
    "~/Library/Caches/com.koingosw.alarmclockpro",
    "~/Library/HTTPStorages/com.koingosw.alarmclockpro",
    "~/Library/Preferences/com.koingosw.alarmclockpro.plist",
    "~/Library/Saved Application State/com.koingosw.alarmclockpro.savedState",
  ]
end
