cask "mongodb-compass" do
  version "1.24.1"
  sha256 "d3e607b7de52a4b5e3e79818b73ce8c31439883e3748ddbaec86d373c0c342d6"

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
