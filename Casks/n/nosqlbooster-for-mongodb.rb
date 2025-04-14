cask "nosqlbooster-for-mongodb" do
  version "10.0.0"
  sha256 "0e83c1677156afdb7c8f096e6ef5388faae71a4fdd9f8fbefd4c851caecbd4e6"

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
