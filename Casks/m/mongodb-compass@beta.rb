cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.53.3-beta.0"
  sha256 arm:   "02dd84a00427551f8e22f6586e8611feb437c048697acd2f1277b5e64272b186",
         intel: "cd702e806ec7e10de876309d4db76db2af8232e07935d8b2f47dc6bfae756883"

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

  depends_on macos: :ventura

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
