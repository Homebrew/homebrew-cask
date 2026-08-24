cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.49.15-beta.4"
  sha256 arm:   "f5d17008fb03cb528fecba5c4806c1f006f3d6104030fe7e8ce59c02ccbcf17d",
         intel: "9209baf885adeae01a938a2accd7cce80abe1d930c23abc8d9e2522fd9f338bf"

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
