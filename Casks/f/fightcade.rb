cask "fightcade" do
  version "2.1.44"
  sha256 "1ec7f8bb6e077a0c50518658c8a1c01298e2e62cdf76d2da10916e9146ae3feb"

  url "https://web.fightcade.com/download/Fightcade-osx-v#{version}.tar.gz"
  name "Fightcade"
  desc "Matchmaking platform for retro gaming"
  homepage "https://www.fightcade.com/"

  livecheck do
    url "https://web.fightcade.com/download/update.json"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Fightcade#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Fightcade",
    "~/Library/Preferences/com.fightcade*.plist",
    "~/Library/Saved Application State/com.fightcade*.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
