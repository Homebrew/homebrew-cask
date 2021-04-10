cask "ableton-live-lite" do
  version "11.0.2"
  sha256 "cd06ef521d20cb6e40e765230908cc773f5fddcaa1f7ceb684227fa13d4924ef"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name "Ableton Live Lite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/products/live-lite/"

  livecheck do
    url "https://www.ableton.com/en/release-notes/live-#{version.major}/"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)\s*Release\s*Notes/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Lite.app"

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
