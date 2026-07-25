cask "clone-hero" do
  version "1.1.0.6142,-final"
  sha256 "1b880f98a164d97a84bf09ee1b9636b8a67fe3ccfa0ec04ebfc0bb31561a2f39"

  url "https://github.com/clonehero-game/releases/releases/download/v#{version.csv.first}#{version.csv.second if version.csv.second}/CloneHero.v#{version.csv.first}#{version.csv.second if version.csv.second}.dmg",
      verified: "github.com/clonehero-game/"
  name "Clone Hero"
  desc "Guitar Hero clone"
  homepage "https://clonehero.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)(.+)?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next unless match

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  depends_on :macos

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Logs/srylain Inc_",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
    "~/Library/Saved Application State/com.srylain.CloneHero.savedState",
  ]
end
