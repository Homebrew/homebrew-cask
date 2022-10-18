cask "retroarch-metal" do
  version "1.12.0"
  sha256 "f96354831c44cb60e73fb21eb30375ca376abfbeb2b3299f6594d102ed4776c4"

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
