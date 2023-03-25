cask "ableton-live-lite" do
  arch arm: "universal", intel: "intel"

  version "11.2.11"

  on_high_sierra :or_older do
    sha256 "fefadad3f6cd5d727f897000374d16da9f709f56991f6fcc257bb8b14d76a65d"
  end
  on_mojave :or_newer do
    sha256 arm:   "cc9ae661a0677cb228cfed7eeb685ef1bf74a0b4aacd2c73082cf0756a39e6a3",
           intel: "44da4a8f4206e2bc76965cda6947e920252e69e53f294ea5d82cae27b05cbe05"
  end

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_#{arch}.dmg"
  name "Ableton Live Lite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/products/live-lite/"

  livecheck do
    cask "ableton-live-suite"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Lite.app"

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
