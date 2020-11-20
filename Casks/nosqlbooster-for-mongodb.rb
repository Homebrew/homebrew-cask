cask "nosqlbooster-for-mongodb" do
  version "6.2.2"
  sha256 "3f98a4d5ea50a78a75e8307f0208169076f385adabd30a4cc7e0d06f8cc0c5cd"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
