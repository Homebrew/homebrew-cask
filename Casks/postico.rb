cask "postico" do
  version "1.5.22,9592"
  sha256 "8adcbe10a1a077739e56d5c2795b763d9e1c546b773c65fcfd9eb03e0edad8d7"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.zip"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/"

  livecheck do
    url "https://eggerapps.at/postico/download/"
    strategy :extract_plist
  end

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
