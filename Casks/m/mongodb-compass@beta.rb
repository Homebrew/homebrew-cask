cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.49.13-beta.5"
  sha256 arm:   "e9822180234ca913efdf0b304fe683bc465d4d42d2ea54f1e6a21544dde7456c",
         intel: "e080e4e24f2e4e1506b01980a89ef7b8b0e3c36ad374b599b089921984178236"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta[._-]\d+)$/i)
    strategy :json do |json, regex|
      json["versions"]&.map do |item|
        match = item["_id"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :monterey

  app "MongoDB Compass Beta.app"

  uninstall quit: "com.mongodb.compass.beta"

  zap trash: [
    "~/.mongodb",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.beta.sfl*",
    "~/Library/Application Support/MongoDB Compass Beta",
    "~/Library/Preferences/com.mongodb.compass.beta.plist",
    "~/Library/Saved Application State/com.mongodb.compass.beta.savedState",
  ]
end
