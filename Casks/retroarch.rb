cask "retroarch" do
  version "1.9.1"
  sha256 "c59e8bc1a77122c2c57d25929632d7969dd4dfd250bac9945edb2daf5d342d36"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch"
  homepage "https://www.libretro.com/"

  app "RetroArch.app"
end
