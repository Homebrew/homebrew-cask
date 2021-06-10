cask "retroarch" do
  version "1.9.4"
  sha256 "a9839338cc9a72118079f88a4a76db38bea4f1415376787ac3e3a0581bc8e6f0"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  name "RetroArch"
  desc "Emulator frontend (OpenGL graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    regex(%r{href=["']?/stable/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  app "RetroArch.app"
end
