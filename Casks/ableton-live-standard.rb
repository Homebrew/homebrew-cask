cask "ableton-live-standard" do
  version "11.0.11"
  sha256 "cf9b13181652ea34da7c5a2c552ea1092c7e5011fac180a72c9c9ea0f7095d2f"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name "Ableton Live Standard"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    regex(/(\d+(?:\.\d+)*)\s*Release\s*Notes/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Standard.app"

  uninstall quit: "com.ableton.Live"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Application Support/Ableton",
    "~/Library/Caches/Ableton",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Music/Ableton",
  ]
end
