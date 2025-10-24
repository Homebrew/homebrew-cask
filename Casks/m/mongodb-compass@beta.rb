cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.48.0-beta.0"
  sha256 arm:   "7c3b19bf342a652b275e66e8361d20db50c70c83959ede405695eae780eaab5c",
         intel: "03cfa9c995275299cd9290a5d768700669e2bc0b8a2f3b7c443756380f35b7db"

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

  depends_on macos: ">= :big_sur"

  app "MongoDB Compass Beta.app"

  zap trash: [
    "~/.mongodb",
    "~/Library/Application Support/MongoDB Compass Beta",
    "~/Library/Preferences/com.mongodb.compass.beta.plist",
    "~/Library/Saved Application State/com.mongodb.compass.beta.savedState",
  ]
end
