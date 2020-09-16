cask "nosqlbooster-for-mongodb" do
  version "6.1.6"
  sha256 "7575414803ffa1c6cce9059d4f0281d1a938f0f4184289ed485af41479532f1d"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
