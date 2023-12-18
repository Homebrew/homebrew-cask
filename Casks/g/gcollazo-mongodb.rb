cask "gcollazo-mongodb" do
  version "7.0.3-build.2"
  sha256 "8e89523f92fa2e1bca4cfa405096f4346da15c767456303f3fb53d1edf43f26b"

  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip",
      verified: "github.com/gcollazo/mongodbapp/"
  name "MongoDB"
  desc "App wrapper for MongoDB"
  homepage "https://gcollazo.com/mongodb-app/"

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
