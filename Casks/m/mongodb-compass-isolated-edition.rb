cask "mongodb-compass-isolated-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.49.6"
  sha256 arm:   "e370a7d980222fe6fb72acec24223208109f4bf5eb53b98512ea501522e00e28",
         intel: "7b1bd9ab68e6e1e55153c23054ed3a24b8ae40ee6862bdda7c040eec54e6a42f"

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

  depends_on macos: :big_sur

  app "MongoDB Compass Isolated Edition.app"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/MongoDB Compass Isolated Edition",
    "~/Library/Preferences/com.mongodb.compass.isolated.plist",
    "~/Library/Saved Application State/com.mongodb.compass.isolated.savedState",
  ]
end
