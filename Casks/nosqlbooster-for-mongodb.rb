cask "nosqlbooster-for-mongodb" do
  version "6.1.7"
  sha256 "c007cde8006e26866064746a5843e0dfe49d1c8b4ab303b35be3a6ac0f268a38"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
