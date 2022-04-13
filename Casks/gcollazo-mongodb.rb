cask "gcollazo-mongodb" do
  version "4.2.0-build.3"
  sha256 "a59b5bf99d6c30aca14cade10a24440475c3979cff98ec02c463c8d17d637146"

  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip",
      verified: "github.com/gcollazo/mongodbapp/"
  name "MongoDB"
  desc "App wrapper for MongoDB"
  homepage "https://elweb.co/mongodb-app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-build[._-]?\d+)?)$/i)
  end

  app "MongoDB.app"

  zap trash: [
    "~/Library/Caches/io.blimp.MongoDB",
    "~/Library/Preferences/io.blimp.MongoDB.plist",
  ]
end
