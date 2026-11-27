cask "clone-hero" do
  version "1.1.0.6161,-final"
  sha256 "e1bbaf69514ef9a986014cc82dfce62dbe9c4d4f8120555e27ab48ec3ea5c1b6"

  url "https://github.com/clonehero-game/releases/releases/download/v#{version.csv.first}#{version.csv.second}/CloneHero.v#{version.csv.first}#{version.csv.second}.dmg"
  name "Clone Hero"
  desc "Guitar Hero clone"
  homepage "https://clonehero.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)(.+)?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next unless match

      match.values_at(1, 2).compact_blank.join(",")
    end
  end

  depends_on macos: :monterey

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Logs/srylain Inc_",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
    "~/Library/Saved Application State/com.srylain.CloneHero.savedState",
  ]
end
