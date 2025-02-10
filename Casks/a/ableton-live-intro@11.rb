cask "ableton-live-intro@11" do
  version "11.3.41"
  sha256 "63918bd8f8701b5aacea0440915d5b16aa27c80634bcdfb5fee6e7578f6b1b14"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_universal.dmg"
  name "Ableton Live Intro"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    cask "ableton-live-suite@11"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Intro.app"

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
