cask "fightcade" do
  version "2.1.43"
  sha256 "bea667de0c5ce2b6d3d27abc78ec1ccb4a7ebb56460862c1903c7cbb692158b1"

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
