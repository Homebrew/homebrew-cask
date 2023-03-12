cask "retroarch-metal" do
  version "1.15.0"
  sha256 "c01140bf9ebb22c5aa48c4c1e441e5e64885afac95fbb892e0ef90df3fd7b3d8"

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
