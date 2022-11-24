cask "mongodb-compass-isolated-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.34.1"
  sha256 arm:   "ec3e5f61af00ca6fefb518ef0843ad9ccf8807f4a72aa5cc52add389498d892f",
         intel: "5efa58474a3925ff5bd4f666e8ee9724eff92e292b3a327584e308d4b1d095d1"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-#{arch}.dmg"
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
