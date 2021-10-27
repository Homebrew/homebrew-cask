cask "reaper" do
  version "6.38"

  if MacOS.version <= :mojave
    sha256 "bad6067d534949b75f156ff18e9d5b3042ab78b838ab8409022153508fe7b905"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "34946a1663b8c80b2a9d5a5d79eac516378a7242fae95b67df3cf6ae272509ed"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64_catalina.dmg"
  else
    sha256 "4755122020b843c059c01ad97b20620871b06d34c191b4b20d39eee47b0df228"

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
