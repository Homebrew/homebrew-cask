cask "mongodb-compass" do
  arch arm: "arm64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "0f06e3baf137e86a583c2dd9cbca0a64dd5e5d801f160e7259a53e3a021349e3",
         intel: "2238b424299ec3d877c342d24d1bbec7c290d7978e301bf88a450f7b7f2f8da3"

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass"
  desc "Explore and manipulate your MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)\s*\(Stable/i)
  end

  auto_updates true

  app "MongoDB Compass.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl*",
    "~/Library/Application Support/MongoDB Compass",
    "~/Library/Caches/MongoDB Compass/",
    "~/Library/Preferences/com.mongodb.compass.plist",
    "~/Library/Saved Application State/com.mongodb.compass.savedState",
  ]
end
