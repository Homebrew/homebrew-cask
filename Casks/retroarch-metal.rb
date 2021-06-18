cask "retroarch-metal" do
  version "1.9.5"
  sha256 "26b2b0f362fd8c5443a83bd5b8e44586dcf37abb1c163050e94ecb39dfbcca98"

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
