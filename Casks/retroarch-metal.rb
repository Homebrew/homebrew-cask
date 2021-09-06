cask "retroarch-metal" do
  version "1.9.8"
  sha256 "ee6696735d5f548f3f1d65250d2d7ce964eca4e287a19b9089b9b8a80f2237ca"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/universal/RetroArch_Metal.dmg"
  name "RetroArch"
  desc "Emulator frontend (Metal graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    regex(%r{href=["']?/stable/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  conflicts_with cask: "retroarch"

  app "RetroArch.app"

  zap trash: "~/Library/Application Support/RetroArch"
end
