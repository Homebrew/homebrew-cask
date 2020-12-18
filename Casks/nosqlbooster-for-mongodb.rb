cask "nosqlbooster-for-mongodb" do
  version "6.2.6"
  sha256 "7a182d271e78753f21df6c70e068e85c8c2128431e3a3c91ef9fa07a197446a9"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
