cask "mongodb-compass-isolated-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.49.7"
  sha256 arm:   "29228ab4f662576867b58b949e2d1779a1d7d1b99365ebf5c30a45e2cbb21ce2",
         intel: "a941d68de1141d3bd8fa12be3477f304890e2e51b6b5d55f9d348a660887a4a2"

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
