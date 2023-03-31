cask "optimus-player" do
  version "1.5"
  sha256 "7f9e9ca3ec2a7dde8beeb5a34238449cc94aa9e1d7041260ef0b78526b60b112"

  url "https://download.optimusplayer.com/Optimus%20Player%20#{version}.dmg"
  name "Optimus Player"
  desc "Media player"
  homepage "https://www.optimusplayer.com/"

  livecheck do
    url "https://download.optimusplayer.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Optimus Player.app"

  zap trash: [
    "~/Library/Preferences/mo.darren.optimus.player.mac.plist",
    "~/Library/Saved Application State/mo.darren.optimus.player.mac.savedState",
  ]

  caveats do
    license "https://www.optimusplayer.com/eula/"
  end
end
