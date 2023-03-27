cask "retroarch" do
  version "1.15.0"
  sha256 "3cc50413cdfabc8f031280c784ea856a8d3e8015b17992a62e026e82e9fdbcf0"

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  name "RetroArch"
  desc "Emulator frontend (OpenGL graphics API version)"
  homepage "https://www.libretro.com/"

  livecheck do
    url "https://buildbot.libretro.com/stable/"
    regex(%r{href=["']?/stable/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  conflicts_with cask: "retroarch-metal"

  app "RetroArch.app"

  zap trash: [
    "~/Documents/RetroArch/",
    "~/Library/Application Support/RetroArch",
    "~/Library/Saved Application State/com.libretro.RetroArch.savedState",
  ]
end
