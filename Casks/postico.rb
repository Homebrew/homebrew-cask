cask "postico" do
  version "1.5.14"
  sha256 "ad59c784361ba6652c8f219e1a23dcb3cab58977cdfec2be7b97419b1c1e2825"

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
