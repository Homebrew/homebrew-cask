cask "reaper-arm" do
  version "6.29"

  if Hardware::CPU.intel?
    raise "This Cask is only available to Macs with the M1 processor (ARM)"
  else
    sha256 "ca819c60acb44909e2ee1c5709621463bd5aa88e08dfa6d0843c2677b647806e"
    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}-beta_arm64.dmg"
  end

  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_arm64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "REAPER-ARM.app"
  app "ReaMote-ARM.app"

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
  ]
end
