cask "reaper" do
  version "6.58"

  if MacOS.version <= :mojave
    sha256 "76d9f5cbcb6e34588e144c77f3fe8d4a06125b8dcd2c81e86c5ab0b288753acc"
    url "https://www.reaper.fm/files/6.x/reaper658_x86_64.dmg"
  else
    sha256 "6777d7b3e7a5d4f8d8f3018d3c0f996a83df50577678c830b16f915a82e1bf0c"
    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_universal.dmg"
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
