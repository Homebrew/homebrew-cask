cask "ableton-live-suite" do
  version "11.0"
  sha256 "31a9f793a5aa5aee1258b66c110def3d42317c418e4df5780d15cb383f09c08e"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Suite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
