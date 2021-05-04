cask "nosqlbooster-for-mongodb" do
  version "6.2.13"
  sha256 "a6f928e189260b7b9c217b13776204940635802a3359dd446a30487df2a02135"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  desc "GUI tool and IDE for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
