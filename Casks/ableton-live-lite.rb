cask "ableton-live-lite" do
  version "11.0"
  sha256 "55b2562b61a30af0a5794f2c3c9f846d0189361688568804490ed696ceeb06e3"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Lite"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/products/live-lite/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
