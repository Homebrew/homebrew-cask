cask "reaper" do
  version "6.23.0,6.23"

  if MacOS.version <= :mojave
    sha256 "43b87a6a21c4ecbc37f12eee6dffca584d51f39cc40cf4532480763aa1716da9"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 "c027cc9f1a0bae7e58fad1dbc518a41404a039e6a1c307d5197bd8dec6819930"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64_catalina.dmg"
  end

  appcast "https://www.cockos.com/reaper/latestversion/?p=osx_64",
          must_contain: version.after_comma
  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  app "REAPER64.app"
  app "ReaMote64.app"

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
  ]
end
