cask "nosqlbooster-for-mongodb" do
  version "6.1.1"
  sha256 "0b02b55cc0292f46effbda352ec925e0a605d74fa01b11d4eb8bc66cdb03f945"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
