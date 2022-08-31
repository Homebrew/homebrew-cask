cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "c7faa24afdabce0e1f1feb87badcb8ffeb1d9167cbde50a232b07630dd511666",
         intel: "b4af3a1ba1c9bf75ed3219f2ab90024ccc0b394001d36ab1788a559e88b52c0f"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Readonly"
  desc "Explore and manipulate your MongoDB data"
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
