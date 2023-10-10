cask "ableton-live-standard" do
  version "11.3.12"
  sha256 "df05a6637b8e2f0aeb39294785bf5e63d8e705d252665f620b08e7883b05f382"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_universal.dmg"
  name "Ableton Live Standard"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    cask "ableton-live-suite"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Standard.app"

  uninstall quit: "com.ableton.live"

  zap trash: [
    "~/Library/Application Support/Ableton",
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Caches/Ableton",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Music/Ableton",
  ]
end
