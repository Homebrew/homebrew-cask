cask "retroarch-metal" do
  version "1.9.2"
  sha256 "73d2f50f61967b0720c10ea2c2080de696513ea0973ddd421d277b3e26390057"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  name "RetroArch"
  desc "Emulator frontend (Metal graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    strategy :page_match
    regex(%r{href="/stable/(\d+(?:\.\d+)*)/"}i)
  end

  conflicts_with cask: [
    "retroarch",
  ]

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
