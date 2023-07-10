cask "postico" do
  version "2.0.4,9636"
  sha256 "ceccf24edf19b9cb1e96bada017b332da58fe8b85a1868549774f7871872efad"

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

  auto_updates true

  app "Postico #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Caches/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
