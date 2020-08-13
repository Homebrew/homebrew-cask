cask "nosqlbooster-for-mongodb" do
  version "6.0.5"
  sha256 "4baa73242fd38bfe537e2abd24a0565c92cde7cad0080389e1ad713cf5544239"

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  appcast "https://nosqlbooster.com/downloads"
  name "NoSQLBooster for MongoDB"
  homepage "https://nosqlbooster.com/"

  app "NoSQLBooster for MongoDB.app"
end
