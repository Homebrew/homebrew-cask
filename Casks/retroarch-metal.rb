cask "retroarch-metal" do
  version "1.10.2"
  sha256 "3280f5d9752d62309353f59738859e81553981016337e22326ac3d438931b7f1"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  name "RetroArch"
  desc "Emulator frontend (Metal graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    cask "retroarch"
  end

  conflicts_with cask: "retroarch"

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
