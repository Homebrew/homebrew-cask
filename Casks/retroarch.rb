cask "retroarch" do
  version "1.9.6"
  sha256 "93bea5eaaf9812441c6593a068b35c4480ed6822012ead668416dda6c4cf8774"

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
