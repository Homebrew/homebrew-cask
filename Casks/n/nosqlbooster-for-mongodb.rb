cask "nosqlbooster-for-mongodb" do
  arch arm: "arm64", intel: "x64"

  version "11.2.0"
  sha256 arm:   "2434a74e64eef379ed99d56558c8ec458702fae3c759b36ce6020cfabd392cbb",
         intel: "7cab4ebbfbdc5e2448fc3681e11a3f452608b0e412ea45e4020d0038029f2d56"

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
