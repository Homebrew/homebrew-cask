cask "mongodb-compass" do
  version "1.26.0"
  sha256 "f5099d61a825673d3a7dc598f2bb7b511dae1a13e08f6d3b65b56b4f55e0b262"

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass.app"

  zap trash: [
    "~/Library/Application Support/MongoDB Compass",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl*",
    "~/Library/Caches/MongoDB Compass/",
    "~/Library/Preferences/com.mongodb.compass.plist",
    "~/Library/Saved Application State/com.mongodb.compass.savedState",
  ]
end
