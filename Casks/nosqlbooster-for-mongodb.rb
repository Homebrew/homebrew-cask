cask "nosqlbooster-for-mongodb" do
  version "6.1.4"
  sha256 "c562a040dee01671926bdee65a7e26fd25539c2b2597fbce247872ab1c6a55cd"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
