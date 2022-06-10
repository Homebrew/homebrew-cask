cask "optimus-player" do
  version "1.5,13"
  sha256 "7da0cbb3fb8ab98d4871ecb285e8754d4c8eae489256b7c7280e54c2f82a984f"

  url "https://download.optimusplayer.com/Optimus%20Player%20#{version.csv.first}.dmg"
  name "Optimus Player"
  desc "Media player"
  homepage "https://www.optimusplayer.com/"

  livecheck do
    url "https://download.optimusplayer.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Optimus Player.app"

  zap trash: [
    "~/Library/Preferences/mo.darren.optimus.player.mac.plist",
    "~/Saved Application State/mo.darren.optimus.player.mac.savedState",
  ]

  caveats do
    license "https://www.optimusplayer.com/eula/"
  end
end
