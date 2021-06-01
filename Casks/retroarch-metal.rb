cask "retroarch-metal" do
  version "1.9.4"
  sha256 "a4cb27bea4c0a027bfb0a44694c407a9b02da5bac66b135bcd353cd73d1ceaad"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  name "RetroArch"
  desc "Emulator frontend (Metal graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    regex(%r{href=["']?/stable/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  conflicts_with cask: [
    "retroarch",
  ]

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
