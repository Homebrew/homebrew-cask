cask "ableton-live-suite" do
  version "11.0.5"
  sha256 "67e7a79e1f44a571cbafffdeb5c23403cfd9126a339e19641e4f08b444d24528"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name "Ableton Live Suite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)\s*Release\s*Notes/i)
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
