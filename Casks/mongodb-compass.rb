cask "mongodb-compass" do
  version "1.22.1"
  sha256 "857ee564a5df55d8458009951ff1f5573c4802bc482372ef97cf59ea7770d467"

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
