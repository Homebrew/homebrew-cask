cask "nosqlbooster-for-mongodb" do
  version "7.0.5"
  sha256 "06e2ebb30ff255d41a0d746986ba606b247bc77a481bc570ab6585c5509910b1"

  url "https://s3.mongobooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg",
      verified: "mongobooster.com/"
  name "NoSQLBooster for MongoDB"
  desc "GUI tool and IDE for MongoDB"
  homepage "https://nosqlbooster.com/"

  livecheck do
    url "https://nosqlbooster.com/downloads"
    regex(/%22patch_ver%22(?:%20|\s)*%3A(?:%20|\s)*%22v?(\d+(?:\.\d+)+)%22/i)
  end

  app "NoSQLBooster for MongoDB.app"

  zap trash: [
    "~/Documents/NoSQLBooster",
    "~/Library/Application Support/NoSQLBooster for MongoDB",
    "~/Library/Preferences/com.nosqlbooster.mongodb.plist",
    "~/Library/Saved Application State/com.nosqlbooster.mongodb.savedState",
  ]
end
