cask "ableton-live-intro" do
  version "11.0.11"
  sha256 "2215d3ca75a30bdde361776da4e8291523fced319e9bd4ddacc404f83123a73e"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name "Ableton Live Intro"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    regex(/(\d+(?:\.\d+)*)\s*Release\s*Notes/i)
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
