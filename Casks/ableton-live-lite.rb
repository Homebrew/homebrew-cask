cask "ableton-live-lite" do
  arch = MacOS.version >= :mojave ? "universal" : "intel"
  version "11.1"

  if MacOS.version >= :mojave
    sha256 "b02982b0e32aa3bb792c81d163bf9e238ef7b5ed4ca263e5e826d6617e79c29d"
  else
    sha256 "023422eed26c159c3b67a3e9e520428702ce7dea0b687b00c795823d408e1d2c"
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
