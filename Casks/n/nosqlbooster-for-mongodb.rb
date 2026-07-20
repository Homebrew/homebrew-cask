cask "nosqlbooster-for-mongodb" do
  arch arm: "arm64", intel: "x64"

  version "11.0.5"
  sha256 arm:   "0d0987a9468f7de367db50bbb8aa71a821768c34c82dfc659125a9a31f29c2b7",
         intel: "954c7a26ec54e44402b5900ad84c03e1427ca353d17f81d7aa015916acfae399"

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
    "~/Library/Application Support/NoSQLBooster for MongoDB",
    "~/Library/Preferences/com.nosqlbooster.mongodb.plist",
    "~/Library/Saved Application State/com.nosqlbooster.mongodb.savedState",
  ]
end
