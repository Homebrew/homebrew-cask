cask "reaper" do
  version "6.42"

  if MacOS.version <= :mojave
    sha256 "899e32ecc25666da5b6237c76a69f71258ca7e4bdf3443f6bc62606cfc5240cb"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "d921e32d28bd0833cbf9cf79254f9b6e3d6bb7db26687b7dbb9e7a6e22ba5805"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64_catalina.dmg"
  else
    sha256 "58f908f3a48fb3cc33092077275dc3149b394496c335454f4972ebd3ee7bc277"

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
