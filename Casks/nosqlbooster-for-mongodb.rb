cask "nosqlbooster-for-mongodb" do
  version "6.2.1"
  sha256 "3f3702e7ee3503c86669040ad98c6714fee7a36d4b279f80f7e7eda670dfd450"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
