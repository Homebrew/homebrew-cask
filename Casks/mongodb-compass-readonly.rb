cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.36.4"
  sha256 arm:   "f6c3fa3022541c1db1aa3a4bab48c66b4118094ab2e67cadb8c9cc4dc2aa0090",
         intel: "33fe58daaa50867d63687205efc773cdcf56c7e731f7512575c18475b90f47cb"

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
