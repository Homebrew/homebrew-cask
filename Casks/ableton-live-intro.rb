cask "ableton-live-intro" do
  arch = MacOS.version >= :mojave ? "universal" : "intel"
  version "11.1.5"

  if MacOS.version >= :mojave
    sha256 "06d6801bfc79ece8949318d3d187016d7be73e2642fdfeffa6a261b1c81e0a09"
  else
    sha256 "91064b1551ded54c841d61d8f30a538c6f2f177d1caf2a39f823ea952093f38e"
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
