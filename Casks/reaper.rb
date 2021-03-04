cask "reaper" do
  version "6.24.0,6.24"

  if MacOS.version <= :mojave
    sha256 "f7d4c5737e98493c8e1389cf37d701db3ce14251f79e2f7380046117638fe83c"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 "cf8f8fcab2d44fa313508762d911a7fd44b4d8fc0119004f3bde969dfbd9f9e4"

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
