cask "nosqlbooster-for-mongodb" do
  version "6.2.12"
  sha256 "0de168ce0ddc18b48939023060e927b92ccbe1fd99a755e6400ad4710e9eb3a3"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
