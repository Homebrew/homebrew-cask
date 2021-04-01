cask "retroarch-metal" do
  version "1.9.1"
  sha256 "f261dede40ea75e5b4f8bad6435fc5a41619a2fe9d882f75d3d6c2800d26665b"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  appcast "https://buildbot.libretro.com/stable/"
  name "RetroArch"
  desc "Emulator frontend (Metal graphics API version)"
  homepage "https://www.libretro.com/"

  conflicts_with cask: [
    "retroarch",
  ]

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
