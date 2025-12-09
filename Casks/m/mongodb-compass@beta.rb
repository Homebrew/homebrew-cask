cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.48.3-beta.3"
  sha256 arm:   "ab9a00c34da2d0f09b519b6ae5efe5a3de26d9bf290d93fe2188a263feb3b6ee",
         intel: "3bf35f6fe9487ed5df5cc189babafdb20ddcf19d563e6a00ec5051ac6b4b5c21"

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
