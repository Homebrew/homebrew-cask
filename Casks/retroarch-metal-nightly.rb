cask "retroarch-metal-nightly" do
  version :latest
  sha256 :no_check

  url "https://buildbot.libretro.com/nightly/apple/osx/universal/RetroArch_Metal.dmg",
      verified: "buildbot.libretro.com/nightly/"
  name "RetroArch Metal Nightly"
  desc "Frontend for emulators, game engines, and media players (Metal graphics API)"
  homepage "https://www.retroarch.com/"

  depends_on macos: ">= :high_sierra"

  app "RetroArch.app", target: "RetroArch Nightly.app"

  zap trash: [
    "~/Documents/RetroArchNightly/",
    "~/Library/Application Support/RetroArchNightly",
    "~/Library/Saved Application State/com.libretro.RetroArchNightly.savedState",
  ]
end