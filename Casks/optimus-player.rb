cask "optimus-player" do
  version "1.4,12"
  sha256 "6709f0789f1bc189c38c1770da6a410a17063f431268cb808444832820b24941"

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
