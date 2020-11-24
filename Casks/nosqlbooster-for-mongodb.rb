cask "nosqlbooster-for-mongodb" do
  version "6.2.3"
  sha256 "73fdf6c53f8e50774227f2fca836c548cf3223f92cff2f336ba8b8149a53ec35"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
