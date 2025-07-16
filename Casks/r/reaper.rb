cask "reaper" do
  version "7.42"

  on_mojave :or_older do
    sha256 "512dc725b0781655ad5f95dd45774869b8a7e3eb4720f596372455267802d13d"

    url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  end
  on_catalina :or_newer do
    sha256 "dcad9c80ec014709bf4b831173298a0b146150c91c7ee5b35a7d46da6dc36dfe"

    url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_universal.dmg"
  end

  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "REAPER.app"

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Preferences/com.cockos.reaper.plist",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
  ]
end
