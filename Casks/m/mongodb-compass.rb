cask "mongodb-compass" do
  arch arm: "arm64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "9fd96ac915d830f375b90f1ae57f9bed63d413745e13713dd4436314829eccd8",
         intel: "ee2e36249503e6d39e8444020e233589125e9c2d32e25276bec8f67fe0f53570"

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
