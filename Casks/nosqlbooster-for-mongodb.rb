cask "nosqlbooster-for-mongodb" do
  version "6.2.11"
  sha256 "13677878e0b1015a0cc8f211e391297dbb5f291c28b88390ec80c538e27cdbf4"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
