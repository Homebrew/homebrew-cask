cask "nosqlbooster-for-mongodb" do
  version "6.2.5"
  sha256 "1e4b79c2f066304cb643829d880e4b45e389c1414a6af12cb08e98e1f7d2a6ee"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
