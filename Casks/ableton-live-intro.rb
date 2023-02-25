cask "ableton-live-intro" do
  arch = "intel"
  version "11.2.10"
  sha256 "68ae4aa7c1a4286f77de340f5e2556442ea17a73976c3f90c9dce1c75dc8234a"

  on_mojave :or_newer do
    arch = "universal"
    sha256 "60fd289e95b90a640621334d2cd6afe4b94c8f50c15821c479d8b4cd6c65a56d"
  end

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_#{arch}.dmg"
  name "Ableton Live Intro"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    cask "ableton-live-suite"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Intro.app"

  uninstall quit: "com.ableton.live"

  zap trash: [
    "~/Library/Application Support/Ableton",
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Caches/Ableton",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Music/Ableton",
  ]
end
