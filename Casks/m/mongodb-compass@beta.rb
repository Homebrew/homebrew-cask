cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.52.0-beta.4"
  sha256 arm:   "bc5d99124a516980b718c81ef6fd1318293bb10af5baa0f172afe236683fe65b",
         intel: "5980b0f7d6e2893ea3faf113e75b042ec1ba9801eb47b1a7d7b63913437bb281"

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
