cask "mongodb-compass" do
  arch arm: "arm64", intel: "x64"

  version "1.38.1"
  sha256 arm:   "3822a6a76fa01af6bb36a7477df0b5bf02ffb860986c5469dba7c026f42948d2",
         intel: "227fa271efd502c4458bf16891ffa459d1676e64d4deb5a4cf8d76f4efade126"

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
