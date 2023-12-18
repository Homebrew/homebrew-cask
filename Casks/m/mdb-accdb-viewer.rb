cask "mdb-accdb-viewer" do
  version "2.3.1"
  sha256 "8f6ee157d169182c26f2f3b8cffe1387010203a33a9d3bddaf71706e40783493"

  url "https://eggerapps-downloads.s3.amazonaws.com/mdbviewer-#{version}.zip",
      verified: "eggerapps-downloads.s3.amazonaws.com/"
  name "MDB/ACCDB Viewer"
  desc "Open Microsoft Access Databases"
  homepage "https://eggerapps.at/mdbviewer/"

  livecheck do
    url "https://eggerapps.at/mdbviewer/download/"
    strategy :header_match
  end

  app "MDB ACCDB Viewer.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.mdbviewer",
    "~/Library/Containers/at.eggerapps.mdbviewer",
  ]
end
