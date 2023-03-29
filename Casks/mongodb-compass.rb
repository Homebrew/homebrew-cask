cask "mongodb-compass" do
  arch arm: "arm64", intel: "x64"

  version "1.36.2"
  sha256 arm:   "daaaf1e41036b53f4963b959eba4545087f476c899ee6a62454246b1893cc4fd",
         intel: "fc2fd6e562a07714b774f2410277f2de1b58e8700fa16eb7c6aee9a66bc4cf45"

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
