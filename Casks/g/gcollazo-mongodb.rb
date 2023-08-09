cask "gcollazo-mongodb" do
  version "6.0.0-build.1"
  sha256 "1853dff4712987a22ef586caa425702b51892fe2128e9d35fc14e9edf2d34eb3"

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
