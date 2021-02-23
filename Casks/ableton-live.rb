cask "ableton-live" do
  version "11.0"
  sha256 "ca7f0e0e0009ed450b8e6c23e16ef9f82461cf0dacac75cf076dbbef174e3aed"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Trial.app"

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
