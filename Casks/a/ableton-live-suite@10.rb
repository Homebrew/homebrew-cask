cask "ableton-live-suite@10" do
  version "10.1.43"
  sha256 "8bb8e4b9a4f1f3daa1129dbdf8add879d4e8d575ba95e923ed6dcba368f48717"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
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
    "~/Library/Application Support/Ableton",
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Application Support/CrashReporter/Max_*.plist",
    "~/Library/Application Support/Cycling '74",
    "~/Library/Caches/Ableton",
    "~/Library/Caches/com.ableton.live",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Library/Preferences/com.cycling74.Max*.plist*",
    "~/Library/WebKit/com.ableton.live",
    "~/Documents/Max [0-9]",
    "/Users/Shared/Max [0-9]",
    "~/Music/Ableton",
  ]

  caveats do
    requires_rosetta
  end
end
