cask "postico" do
  version "1.5.15"
  sha256 "2e8906ad937fba697b813877e16857f117bbdbe78bfe003bf0bcc03fd3bab715"

  # eggerapps-downloads.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://eggerapps-downloads.s3.amazonaws.com/postico-#{version}.zip"
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
