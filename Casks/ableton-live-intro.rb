cask "ableton-live-intro" do
  version "10.1.18"
  sha256 "880d84dc84b269938a7aaa5034d4a9c06029edc69de037248c40a9ac31bdaaa0"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Intro"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
