cask "postico" do
  version "2.2.3,9772"
  sha256 "0f718dd59d1f8422c374e97cfdcbab27e103df4824f0e9c006e760886edfc739"

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

  app "Postico #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Caches/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
