cask "ableton-live-suite" do
  version "11.2.11"

  on_high_sierra :or_older do
    sha256 "40484b0508166caf5cdee2edb5557d77173c3ba1a4a326621b386f5d28e099f3"

    url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_intel.dmg"
  end
  on_mojave :or_newer do
    sha256 "cbe60f10213e1d73cb1a12b1e3abfc23ead19588d25ec76653734cf81141fbf2"

    url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_universal.dmg"
  end

  name "Ableton Live Suite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    regex(/(\d+(?:\.\d+)+)\s*Release\s*Notes/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Suite.app"

  uninstall quit: "com.ableton.live"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Max_*.*_resource.diag",
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Application Support/CrashReporter/Max_*.plist",
    "~/Library/Application Support/Ableton",
    "~/Library/Application Support/Cycling '74",
    "~/Library/Caches/Ableton",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Library/Preferences/com.cycling74.Max*.plist*",
    "~/Music/Ableton",
    "~/Documents/Max [0-9]",
    "/Users/Shared/Max [0-9]",
  ]
end
