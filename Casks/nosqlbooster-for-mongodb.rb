cask "nosqlbooster-for-mongodb" do
  version "6.1.0"
  sha256 "ed01c3d31adf37ddd2b7938370541f830689563f2175d9dbfe88be8a147b6640"

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
