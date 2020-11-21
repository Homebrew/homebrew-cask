cask "postico" do
  version "1.5.16"
  sha256 "23c79a6ddcb4a7fcb5a2ebba8a482aefb80dfaa6d421c037735573fac2abe5b1"

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
