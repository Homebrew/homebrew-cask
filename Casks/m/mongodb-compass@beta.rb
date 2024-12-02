cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.45.0-beta.0"
  sha256 arm:   "a21c3ff048eb5bdf8a192056d81e6e77770a08ebc28e143dbed456cb46b89d8f",
         intel: "bec7e5b37d4cb5fa0a9b86b63f4e9c7b372eee68d1cf50c83eaabeb479c33643"

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
