cask "postico" do
  version "2.3.2,9798"
  sha256 "848b5e693785fe203def9045581de017e6dc844a847f532deb47fef038d7a894"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.dmg"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico#{version.major}/"

  livecheck do
    url "https://releases.eggerapps.at/postico#{version.major}/appcast.xml?update_channel=2"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "postico@1"
  depends_on macos: ">= :sonoma"

  app "Postico #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Caches/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
