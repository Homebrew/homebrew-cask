cask "retroarch" do
  version "1.9.0"
  sha256 "97731e8300e4f94abd9db9296c3ec74c4b68dbc15835ab983225ae47eb764425"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch"
  homepage "https://www.libretro.com/"

  app "RetroArch.app"
end
