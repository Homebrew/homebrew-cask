cask "clone-hero" do
  version "1.1.0.6085,-final"
  sha256 "ca84b001de1e9205a9599b88355b6e0d005b6da7e28bef95d8baf3aa7b4bb819"

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
