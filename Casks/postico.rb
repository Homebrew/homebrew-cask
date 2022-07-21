cask "postico" do
  version "1.5.21"
  sha256 "dfb11623e6539c2a5127a0dc7639baf06d62c774b195117a49b3e0eaf6f70ed6"

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
