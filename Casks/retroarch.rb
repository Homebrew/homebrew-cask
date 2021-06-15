cask "retroarch" do
  version "1.9.5"
  sha256 "134a50f60028ea487249fe1b8232677aa3f6e6c0325c4f025a1ef43b5fcb15ee"

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
