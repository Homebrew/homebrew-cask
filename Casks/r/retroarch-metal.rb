cask "retroarch-metal" do
  version "1.19.1"
  sha256 :no_check # required as upstream package is often updated in place

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  name "RetroArch"
  desc "RetroArch is a frontend for emulators, game engines and media players. (Metal graphics API version)"
  homepage "https://www.retroarch.com/"

  livecheck do
    cask "retroarch"
  end

  conflicts_with cask: "retroarch"

  app "RetroArch.app"

  zap trash: [
    "~/Documents/RetroArch/",
    "~/Library/Application Support/RetroArch",
    "~/Library/Saved Application State/com.libretro.RetroArch.savedState",
  ]
end
