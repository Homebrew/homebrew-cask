cask "nosqlbooster-for-mongodb" do
  version "6.1.8"
  sha256 "2606943ad24701b0325204c437b739ce38c579712082b3314f50a9fe77ba8d58"

  # mongobooster.com was verified as official when first introduced to the cask
  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
