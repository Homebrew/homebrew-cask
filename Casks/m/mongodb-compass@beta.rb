cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.46.6-beta.1"
  sha256 arm:   "6784b651db89a3c9ccb73dc8455e33583a1fd17f8b85572af164b4e8c4fe4a9b",
         intel: "66ada3fadf5d9b5e1640e5aa29f69badcc16d679ffe1b3e7490cbc364d635de0"

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

  depends_on macos: ">= :catalina"

  app "MongoDB Compass Beta.app"

  zap trash: [
    "~/.mongodb",
    "~/Library/Application Support/MongoDB Compass Beta",
    "~/Library/Preferences/com.mongodb.compass.beta.plist",
    "~/Library/Saved Application State/com.mongodb.compass.beta.savedState",
  ]
end
