cask "retroarch" do
  version "1.10.1"
  sha256 "fb3a61d1717a1d7b9cd31684d742ad084c24635a9ef91ca7142584e6fc912e23"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  name "RetroArch"
  desc "Emulator frontend (OpenGL graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    regex(%r{href=["']?/stable/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  conflicts_with cask: "retroarch-metal"

  app "RetroArch.app"
end
