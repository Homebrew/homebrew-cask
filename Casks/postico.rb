cask "postico" do
  version "1.5.20"
  sha256 "cede47c34062087ccb74f3f5d2aeab089e7719b981f13f14b9b2a79f5c0f0fe9"

  url "https://eggerapps-downloads.s3.amazonaws.com/postico-#{version}.zip",
      verified: "eggerapps-downloads.s3.amazonaws.com/"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/"

  livecheck do
    url "https://eggerapps.at/postico/download/"
    strategy :header_match
  end

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
