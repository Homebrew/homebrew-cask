cask "ableton-live-suite" do
  arch = MacOS.version >= :mojave ? "universal" : "intel"
  version "11.1.5"

  if MacOS.version >= :mojave
    sha256 "bbce5e7a5c5632f88fb319df2daaf7ba1b9b0a1af0e94f60ee21d9dd059bf1a7"
  else
    sha256 "0e1779d22c087993a4e5f11f9f2a83a429dccfafa92c5e7aa05c87219de39c90"
  end

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_#{arch}.dmg"
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
