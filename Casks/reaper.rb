cask "reaper" do
  version "6.25.0,6.25"

  if MacOS.version <= :mojave
    sha256 "49a269ebf9f3f8d2e992b1b63abd2caca3e2ea2bd77291078bdc5c73de683066"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 "d26c294015052b4d9d13d046e297d4a1a88e846d2cff9614889875e6e96a6926"

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
