cask "reaper" do
  version "7.19"

  on_mojave :or_older do
    sha256 "28e7aa0fbb257b8dd53931e70526b609b5c5f01a80d46f0096a992dcf15723a8"

    url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"

    caveats do
      requires_rosetta
    end
  end
  on_catalina :or_newer do
    sha256 "bb1acbb6aeeb4e6b20607784d728b31ec9ee8a388bd7b4646de0493d152a467c"

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
