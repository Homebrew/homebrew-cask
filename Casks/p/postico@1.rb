cask "postico@1" do
  version "1.5.22,9592"
  sha256 "8adcbe10a1a077739e56d5c2795b763d9e1c546b773c65fcfd9eb03e0edad8d7"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.zip"
  name "Postico 1"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/v1.php"

  livecheck do
    url "https://releases.eggerapps.at/postico2/downloads"
    regex(/>\s*Postico\s+v?(1(?:\.\d+){2,})\s*<.*?href=["']?[^"' >]*?postico[._-]v?(\d+(?:\.\d+)*)\.zip/im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "postico"

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
