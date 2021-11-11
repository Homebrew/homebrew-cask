cask "ableton-live-intro" do
  version "11.0.12"
  sha256 "0847be19873fcb7d5f40f706b365b90b7a2e3c09df31cfff4b5a8416c8dd1cc8"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name "Ableton Live Intro"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    regex(/(\d+(?:\.\d+)+)\s*Release\s*Notes/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Intro.app"

  uninstall quit: "com.ableton.live"

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
