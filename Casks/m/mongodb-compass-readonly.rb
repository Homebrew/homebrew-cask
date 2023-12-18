cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "404153fc03603cae2c9873089985998defbfb33c0aa1197370a5a446b2899ddc",
         intel: "306a6c3ca50b4df3a61df9c6d9d0b323c66a53b0dae59ac221fd76a836349fff"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Readonly"
  desc "Interactive tool for analyzing MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)\s*\(Readonly/i)
  end

  app "MongoDB Compass Readonly.app"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/MongoDB Compass Readonly",
    "~/Library/Caches/com.mongodb.compass.readonly",
    "~/Library/Caches/com.mongodb.compass.readonly.ShipIt",
    "~/Library/Preferences/com.mongodb.compass.readonly.plist",
    "~/Library/Saved Application State/com.mongodb.compass.readonly.savedState",
  ]
end
