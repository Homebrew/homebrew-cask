cask "retroarch-metal" do
  version "1.9.2"
  sha256 "d0b6b6a126b1649790c14da54802dcde4df42c711ab46ecffa5ce5d646b801a6"

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
