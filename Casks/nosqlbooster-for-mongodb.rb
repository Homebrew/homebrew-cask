cask "nosqlbooster-for-mongodb" do
  version "6.2.4"
  sha256 "23948a48c2f5316be082d363d2f203ce0ced08715f545de9ca8ea89e45630a24"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
