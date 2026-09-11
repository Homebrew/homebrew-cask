cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.50.0"
  sha256 arm:   "53b08689807ba6c8a649015a47be8b5321bb1f237e7ac0106b2a2bd9a5d7f64c",
         intel: "806b994f256ecdf04d289028c1af4dc35a93a732a3172fa23cb073a4d238ef1e"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Readonly"
  desc "Interactive tool for analyzing MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/^v?(\d+(?:\.\d+)+)[._-]readonly$/i)
    strategy :json do |json, regex|
      json["versions"]&.map do |item|
        match = item["_id"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :monterey

  app "MongoDB Compass Readonly.app"

  uninstall quit: "com.mongodb.compass.readonly"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.readonly.sfl*",
    "~/Library/Application Support/MongoDB Compass Readonly",
    "~/Library/Caches/com.mongodb.compass.readonly",
    "~/Library/Caches/com.mongodb.compass.readonly.ShipIt",
    "~/Library/Preferences/com.mongodb.compass.readonly.plist",
    "~/Library/Saved Application State/com.mongodb.compass.readonly.savedState",
  ]
end
