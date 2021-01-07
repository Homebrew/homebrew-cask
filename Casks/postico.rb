cask "postico" do
  version "1.5.17"
  sha256 "a83e95f0b6ec6086b84ec7c97c159aaca8d2449e9fa59f5d1ee982cfd27e0143"

  url "https://eggerapps-downloads.s3.amazonaws.com/postico-#{version}.zip",
      verified: "eggerapps-downloads.s3.amazonaws.com/"
  appcast "https://eggerapps.at/postico/docs/?file=changelist.html"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/"

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
