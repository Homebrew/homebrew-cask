cask "mongodb-compass-isolated-edition" do
  version "1.32.6"
  sha256 "dd013026d7909985387439a73d0e1ee0df5d4eefb267187096e8ba61bd58e48c"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  name "MongoDB Compass Isolated"
  desc "Explore and manipulate your MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)\s*\(Isolated/i)
  end

  app "MongoDB Compass Isolated Edition.app"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/MongoDB Compass Isolated Edition",
    "~/Library/Preferences/com.mongodb.compass.isolated.plist",
    "~/Library/Saved Application State/com.mongodb.compass.isolated.savedState",
  ]
end
