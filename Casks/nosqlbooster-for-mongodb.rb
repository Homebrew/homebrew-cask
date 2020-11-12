cask "nosqlbooster-for-mongodb" do
  version "6.2.0"
  sha256 "ee9aab29dda7321a47c056f5765fb4d7393cc25220fb7a9333aa2f133bc4c05b"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
