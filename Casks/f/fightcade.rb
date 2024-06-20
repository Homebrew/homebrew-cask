cask "fightcade" do
  version "2.1.41"
  sha256 "9471a9f4c4577465203a646578aa2fc371ccbbcdf0b83dc11b7b47f506a2b07c"

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
