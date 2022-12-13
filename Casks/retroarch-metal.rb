cask "retroarch-metal" do
  version "1.14.0"
  sha256 "89162d663b45cdde938cdaf042abe2a23af40dae5fc3ac33f448b3e711c0d4a3"

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
