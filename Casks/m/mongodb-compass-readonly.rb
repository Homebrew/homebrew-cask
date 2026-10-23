cask "mongodb-compass-readonly" do
  arch arm: "arm64", intel: "x64"

  version "1.53.1"
  sha256 arm:   "25dc2f28df699c504ec9143e4850aee86d60e3ec897eca5e234bbfa3b054ebdd",
         intel: "495af1814f0508efd32971f714edbab59fc95f015467a610632e4dd0656c774c"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass Readonly"
  desc "Interactive tool for analyzing MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/^v?(\d+(?:\.\d+)+)[._-]readonly$/i)
    strategy :json do |json, regex|
      json["versions"]&.map do |item|
        match = item["_id"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :ventura

  app "MongoDB Compass Readonly.app"

  uninstall quit: "com.mongodb.compass.readonly"

  zap trash: [
    "~/.mongodb/compass",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.readonly.sfl*",
    "~/Library/Application Support/MongoDB Compass Readonly",
    "~/Library/Caches/com.mongodb.compass.readonly",
    "~/Library/Caches/com.mongodb.compass.readonly.ShipIt",
    "~/Library/Preferences/com.mongodb.compass.readonly.plist",
    "~/Library/Saved Application State/com.mongodb.compass.readonly.savedState",
  ]
end
