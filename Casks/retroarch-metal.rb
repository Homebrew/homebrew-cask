cask "retroarch-metal" do
  version "1.9.0"
  sha256 "e1f88d0535411eacf1035112a53f732c2bfd8cebbfa4aa9729dc2516ddd7ce24"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_Metal.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch Metal"
  homepage "https://www.libretro.com/"

  conflicts_with cask: [
    "retroarch",
    "retroarch-cg",
  ]

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
