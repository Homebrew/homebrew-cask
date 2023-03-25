cask "ableton-live-intro" do
  version "11.2.11"

  on_high_sierra :or_older do
    sha256 "68ae4aa7c1a4286f77de340f5e2556442ea17a73976c3f90c9dce1c75dc8234a"

    url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_intel.dmg"
  end
  on_mojave :or_newer do
    sha256 "ad24ed3cecd392464efd8b6bd3a0b65f8f7b624fdd07b0315e266050d97f77e2"

    url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_universal.dmg"
  end

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
