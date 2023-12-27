cask "dbkoda" do
  version "1.1.0.187"
  sha256 :no_check

  url "https://s3-us-west-1.amazonaws.com/uswest-nc.release.dbkoda/dbkoda-latest.dmg",
      verified: "s3-us-west-1.amazonaws.com/uswest-nc.release.dbkoda/"
  name "dbKoda"
  desc "Open-source, next generation IDE for MongoDB"
  homepage "https://www.dbkoda.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "dbKoda.app"

  zap trash: [
    "~/Library/Application Support/dbKoda",
    "~/Library/Logs/dbKoda",
    "~/Library/Preferences/com.southbanksoftware.dbkoda.helper.plist",
    "~/Library/Preferences/com.southbanksoftware.dbkoda.plist",
    "~/Library/Saved Application State/com.southbanksoftware.dbkoda.savedState",
    "~/.dbKoda",
  ]
end
