cask "nosqlbooster-for-mongodb" do
  arch arm: "arm64", intel: "x64"

  version "11.1.6"
  sha256 arm:   "8d248fca1bf868f0d38185e41be9c1aa7c8d0d7f8780fd1fad5e08a68291899b",
         intel: "e54b86502fded198bb776b7530f23eba5fce758850d2a1ec61f5564fb751fc57"

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
