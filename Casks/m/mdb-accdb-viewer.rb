cask "mdb-accdb-viewer" do
  version "2.3.2"
  sha256 "5897a9d1bcfbb4711189716aedc88ca47f5ade821a67f5195a2d03c46bc22ece"

  url "https://downloads.eggerapps.at/mdbviewer/mdbviewer-#{version}.zip"
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
