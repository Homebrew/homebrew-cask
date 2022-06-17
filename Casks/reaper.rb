cask "reaper" do
  version "6.61"

  if MacOS.version <= :mojave
    sha256 "800738b63831b720266688ec7eeae7349664cd38c88d48e13a3b7aa6b5a04d0f"
    url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  else
    sha256 "bd41f738b7e93fba0c29e654b090d7ba82ed3c1f9fea08c48842f4f22f9d3917"
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
