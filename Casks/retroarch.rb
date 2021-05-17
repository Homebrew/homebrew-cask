cask "retroarch" do
  version "1.9.3"
  sha256 "e579b9a52eb8326cf93d92c944bccbfee9f52a3a0588204a1e1aea4191be3418"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch"
  homepage "https://www.libretro.com/"

  app "RetroArch.app"
end
