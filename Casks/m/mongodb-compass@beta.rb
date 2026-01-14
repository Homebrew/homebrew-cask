cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.49.0-beta.0"
  sha256 arm:   "9f818cc2fc325aa9a07663ae74aa4388e82ae88944409b67b8a18a7fc7e5e596",
         intel: "dc474eb4e1b6d288cf678e01b77cf56f2feebbd09c47172d5005356f9623d482"

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
