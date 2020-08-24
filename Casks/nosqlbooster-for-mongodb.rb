cask "nosqlbooster-for-mongodb" do
  version "6.1.2"
  sha256 "71bd0ea62d172ef18491c1b50fd56d4a3fe749c710deb00caeb7273b87c5c609"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
