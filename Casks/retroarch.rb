cask "retroarch" do
  version "1.9.0"
  sha256 "2d5ea12c92364803465e67376aa496529109f01db9ce182c02bc4e0bc6ca19cd"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch"
  homepage "https://www.libretro.com/"

  app "RetroArch.app"
end
