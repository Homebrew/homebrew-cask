cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.52.0-beta.1"
  sha256 arm:   "86bc79ccd7a84c7e47a32d611ecb04e067852c0fe4683d01382f5da78dd65129",
         intel: "6eba27eb17e8439b476f7071ca44f8f8d65fc68ad5b06d8826ae3b0ac2d5b89b"

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
