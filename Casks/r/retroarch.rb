cask "retroarch" do
  version "1.19.1"
  sha256 :no_check # required as upstream package is often updated in place

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg",
      verified: "retroarch.com/"
  name "RetroArch"
  desc "RetroArch is a frontend for emulators, game engines and media players. (OpenGL graphics API version)"
  homepage "https://www.retroarch.com/"

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
