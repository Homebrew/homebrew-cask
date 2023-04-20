cask "postico" do
  version "2.0.1,9593"
  sha256 "0a8d012ae67e51001c94c87f98274010524e94771d3a7009fb09eaa4e492e29a"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.dmg"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico#{version.major}/"

  livecheck do
    url "https://releases.eggerapps.at/postico2/changelog"
    strategy :page_match do |page|
      v = page[/["']>\n*?(\d+(?:\.\d+)+)/i, 1]
      build = page[/Build\s+(\d+)</, 1]
      "#{v},#{build}" if v && build
    end
  end

  app "Postico #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Caches/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
