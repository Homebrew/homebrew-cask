cask "retroarch-metal" do
  version "1.9.3"
  sha256 "0c140b52d524ef418039b6348842706d715b1198c3dd37f779bc403987efa774"

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
