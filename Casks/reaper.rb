cask "reaper" do
  version "6.20.0,6.20"

  if MacOS.version <= :mojave
    sha256 "ad8ac6bce453ea3aa5acbd7aa059a6686cfe85ac0e561bf9bc95c1ec3b886667"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 "69af746d23374b39bdfb5ebfc586dfd7f6ca94f4f6d752801ede1e37c7c390f0"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64-catalina.dmg"
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
