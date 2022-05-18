cask "ableton-live-lite" do
  arch = MacOS.version >= :mojave ? "universal" : "intel"
  version "11.1.5"

  if MacOS.version >= :mojave
    sha256 "eaa2a3eab14696301a63a02f13e5205d420fd0abd78209ef6d2f47b1a7787175"
  else
    sha256 "e1c56f3f393e8914848294d370f0074bd622f6801cc94920ba93d6f59b1e6e35"
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
