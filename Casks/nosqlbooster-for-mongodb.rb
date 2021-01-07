cask "nosqlbooster-for-mongodb" do
  version "6.2.8"
  sha256 "766274ca074b9cd5f9499435b9678c65c8efa24df0a71bedc92ae411c2fed786"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
