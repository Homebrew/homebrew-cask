cask "postico" do
  version "2.0.2,9622"
  sha256 "b5bdcf76ba76c20ecb93dcf67d34a6b89d848271473d86aaa1f853440b5fa341"

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
