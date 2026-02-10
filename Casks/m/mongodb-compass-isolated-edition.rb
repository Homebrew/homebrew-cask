cask "mongodb-compass-isolated-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.49.1"
  sha256 arm:   "c46cf0b8b0c15628d1c2fba62aaaa23a63158907b3255a81ee2554177c76cf8d",
         intel: "fc707589bfb903e8128e61b8b93e1bc01c3224a0c00c8cf282191b2e25f96f76"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Isolated"
  desc "Interactive tool for analyzing MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/^v?(\d+(?:\.\d+)+)[._-]isolated$/i)
    strategy :json do |json, regex|
      json["versions"]&.map do |item|
        match = item["_id"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "MongoDB Compass Isolated Edition.app"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/MongoDB Compass Isolated Edition",
    "~/Library/Preferences/com.mongodb.compass.isolated.plist",
    "~/Library/Saved Application State/com.mongodb.compass.isolated.savedState",
  ]
end
