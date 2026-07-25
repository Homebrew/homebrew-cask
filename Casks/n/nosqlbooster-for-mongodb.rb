cask "nosqlbooster-for-mongodb" do
  arch arm: "arm64", intel: "x64"

  version "11.1.1"
  sha256 arm:   "51cee7a9e1a32de813f01417a47586a8e372cc456ca320f8ac42d055d2aa6f58",
         intel: "2ba8ec121ca1c9249cc058fd8de838ba731646fb108caba02dc368bf2eaa06f3"

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
