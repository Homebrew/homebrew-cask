cask "ableton-live-standard" do
  version "12.4.5"
  sha256 "45a5dda05c141337a6f65b02561d098ec78f5c4c2192ee51ef3131412e0bc943"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_universal.dmg"
  name "Ableton Live Standard"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    cask "ableton-live-suite"
  end

  auto_updates true
  depends_on macos: :big_sur

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
