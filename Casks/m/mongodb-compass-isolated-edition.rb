cask "mongodb-compass-isolated-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.42.5"
  sha256 arm:   "8da24b16ba76d25567dd66a327a96a544d9c961ec08857156e16ecb2aaa49230",
         intel: "2209de373a21d92a4fc7a4eab15a096e7211ef373e9b5c87a60261f495e30ade"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Isolated"
  desc "Interactive tool for analyzing MongoDB data"
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
