cask "mongodb-compass" do
  arch arm: "arm64", intel: "x64"

  version "1.42.2"
  sha256 arm:   "ffac03f77a5d238194cd538b8b72f41cb1b0d09647ed4a8ce278cf08e40b333b",
         intel: "39afaf799ff790e0c2752e97b4a5cc3234e85cfc1f39dda7bc7fa54691a3e419"

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass"
  desc "Interactive tool for analyzing MongoDB data"
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
