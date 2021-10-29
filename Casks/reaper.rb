cask "reaper" do
  version "6.39"

  if MacOS.version <= :mojave
    sha256 "de65956d4d590dc64cf0b222f2d0b948a37c1d38c7760372cf7ee36682806ed8"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "2a3537441752fa60e95afcfd2683d258a75f46abed7eac6f3ef028ddbe533632"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64_catalina.dmg"
  else
    sha256 "0d90275b12a04f7eaa49b420ee2bcf06b26dd437714dfc519e6226aecd3e90b5"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_arm64.dmg"
  end

  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  if Hardware::CPU.intel?
    app "REAPER.app"
    app "ReaMote.app"
  else
    app "REAPER-ARM.app"
    app "ReaMote-ARM.app"
  end

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Preferences/com.cockos.reaper.plist",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
  ]
end
