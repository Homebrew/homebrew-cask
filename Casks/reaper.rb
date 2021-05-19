cask "reaper" do
  version "6.29.0,6.29"

  if MacOS.version <= :mojave
    sha256 "9cafc2dcda0ea11daea92f6558aea6eb3aa58917b91a50e81e2a623e3fda0f5f"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 "c29fca6eb8a9365a3b0a665eea546a428e4aec8bb4ac21e6d0f6f784c5530ca1"

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
