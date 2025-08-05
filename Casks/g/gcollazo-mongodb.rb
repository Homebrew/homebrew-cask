cask "gcollazo-mongodb" do
  version "8.0.5-build.1"
  sha256 "bc545179d510b4fc80ac9866d34228faa7153137eea8f5ebcac957abf9d3ef89"

  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip",
      verified: "github.com/gcollazo/mongodbapp/"
  name "MongoDB"
  desc "App wrapper for MongoDB"
  homepage "https://gcollazo.com/mongodb-app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-build[._-]?\d+)?)$/i)
  end

  depends_on macos: ">= :mojave"

  app "MongoDB.app"

  zap trash: [
    "~/Library/Caches/io.blimp.MongoDB",
    "~/Library/Preferences/io.blimp.MongoDB.plist",
  ]
end
