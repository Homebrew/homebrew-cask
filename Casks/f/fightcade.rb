cask "fightcade" do
  version "2.1.45"
  sha256 "926e18895d19ea74c47facbdd1463987700590e73839f5385f8c03dd68066046"

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
