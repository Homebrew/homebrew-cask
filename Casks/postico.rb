cask "postico" do
  version "1.5.18"
  sha256 "5d60a4f69885c84f72c276b37917ab02524900e38fff341689c40797d82da95a"

  url "https://eggerapps-downloads.s3.amazonaws.com/postico-#{version}.zip",
      verified: "eggerapps-downloads.s3.amazonaws.com/"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/"

  livecheck do
    url "https://eggerapps.at/postico/download/"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
