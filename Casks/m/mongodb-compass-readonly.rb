cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.39.1"
  sha256 arm:   "34d3e8a431476c8cf98e5c4be4eee1b7e320a85d8cd3e0fdea672ae4ed858311",
         intel: "a9d2e3f901c8ac6b1ede636003420cb5cfb1b4759ade3b27b50c558ef6d2dbba"

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
