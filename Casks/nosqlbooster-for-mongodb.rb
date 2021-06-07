cask "nosqlbooster-for-mongodb" do
  version "6.2.15"
  sha256 "3ca8fc217ea575109a550bd3635bf1412bcb19124ead92b848dc5eb9098ceea6"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  desc "GUI tool and IDE for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
