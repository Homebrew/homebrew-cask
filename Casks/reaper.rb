cask "reaper" do
  version "6.78"

  on_mojave :or_older do
    sha256 "d1ffb0466ad0f410ea762b7edf68913ccda356070e2613706b753097201f1678"

    url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  end
  on_catalina :or_newer do
    sha256 "72b3ed954f8c746a4c111b61018b6be7ff40d19ba851d57aae748587fab333fd"

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
  app "ReaMote.app"

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Preferences/com.cockos.reaper.plist",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
  ]
end
