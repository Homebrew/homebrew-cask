cask "nosqlbooster-for-mongodb" do
  version "9.1.0"
  sha256 "e67752940414c62ef49b2df8f0ff63c25ca41c7bef27cc0db46323a87b4b48a6"

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

  caveats do
    requires_rosetta
  end
end
