cask "timer" do
  version "9.0.3"
  sha256 :no_check

  url "https://www.apimac.com/download/Timer.zip"
  name "Timer"
  desc "Stopwatch, alarm clock, and clock utility"
  homepage "https://www.apimac.com/mac/timer/"

  deprecate! date: "2024-10-27", because: :unmaintained
  disable! date: "2025-10-27", because: :unmaintained

  app "Timer.app"

  zap trash: [
    "~/Library/Application Support/Apimac",
    "~/Library/Preferences/Apimac",
    "~/Library/Preferences/com.apimac.Timer.plist",
    "~/Library/Preferences/com.apimac.TimerMac.pdata",
  ]

  caveats do
    requires_rosetta
  end
end
