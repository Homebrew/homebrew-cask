cask "retroarch" do
  version "1.9.3"
  sha256 "e579b9a52eb8326cf93d92c944bccbfee9f52a3a0588204a1e1aea4191be3418"

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
