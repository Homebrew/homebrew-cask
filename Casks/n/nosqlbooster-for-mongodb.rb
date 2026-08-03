cask "nosqlbooster-for-mongodb" do
  arch arm: "arm64", intel: "x64"

  version "11.1.3"
  sha256 arm:   "491e2175cd27408362096a869ad2d5bb056266243130f97e740852d7fb54c6bc",
         intel: "8e2fd3de10a69d8ede7de22130acb234ce4453417f73c51e2b493e565c0de374"

  url "https://s3.nosqlbooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}-#{arch}.dmg"
  name "NoSQLBooster for MongoDB"
  desc "GUI tool and IDE for MongoDB"
  homepage "https://nosqlbooster.com/"

  livecheck do
    url "https://nosqlbooster.com/downloads"
    regex(/href=.*?nosqlbooster4mongo[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "NoSQLBooster for MongoDB.app"

  zap trash: [
    "~/Documents/NoSQLBooster",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nosqlbooster.mongodb.sfl*",
    "~/Library/Application Support/NoSQLBooster for MongoDB",
    "~/Library/Preferences/com.nosqlbooster.mongodb.plist",
    "~/Library/Saved Application State/com.nosqlbooster.mongodb.savedState",
  ]
end
