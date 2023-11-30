cask "nosqlbooster-for-mongodb" do
  version "8.1.3"
  sha256 "911ad956b80783901d1de1152fcd089b57dda71f4952e33264ed0a78d3caaf18"

  url "https://s3.nosqlbooster.com/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
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
