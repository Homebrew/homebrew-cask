cask "retroarch" do
  version "1.9.6"
  sha256 "4ff4dfb5cd1ed8e9048a6a15c3ad6fabb1afbf11268674a5dba84331de36f7aa"

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
