cask "ableton-live-standard" do
  arch = MacOS.version >= :mojave ? "universal" : "intel"
  version "11.1.1"

  if MacOS.version >= :mojave
    sha256 "15ba165e040dd64080b6f854db3228677ea765272731f29ac1de1e9abf2c4475"
  else
    sha256 "1da2aeb846cd75c7ee7a98a62b61eaf6cf4f8adddd1dec0b9abf392b4ab23f44"
  end

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_#{arch}.dmg"
  name "Ableton Live Standard"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  livecheck do
    cask "ableton-live-suite"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ableton Live #{version.major} Standard.app"

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
