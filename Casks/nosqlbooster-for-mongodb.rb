cask "nosqlbooster-for-mongodb" do
  version "6.1.3"
  sha256 "c69308aff9b64e947a660f9636d345006b6c0e649f51ddad345d5ab3473dcb13"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
