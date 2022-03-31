cask "retroarch" do
  version "1.10.2"
  sha256 "579d2409af2b30b515b65e588dc518a6f7cb20e295b1182986c4d0a5d9febc7d"

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
