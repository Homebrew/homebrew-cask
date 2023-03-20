cask "fightcade" do
  version "2.1.38"
  sha256 "30b0e8ef341dfb1ae935fa29e42bf7e54e4e9478440cda0e0430c8d0c38498ce"

  url "https://web.fightcade.com/download/Fightcade-osx-v#{version}.tar.gz"
  name "Fightcade"
  desc "Matchmaking platform for retro gaming"
  homepage "https://www.fightcade.com/"

  livecheck do
    url "https://web.fightcade.com/download/update.json"
    strategy :json do |json|
      json["mac"]["version"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Fightcade#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Fightcade",
    "~/Library/Preferences/com.fightcade*.plist",
    "~/Library/Saved Application State/com.fightcade*.savedState",
  ]
end
