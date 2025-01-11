cask "bike" do
  version "1.21,188"
  sha256 "50a13110f60c94bf4e0b893c8820a6f4a6daeb14b79f3ca5f6d3fe9497ef8b1a"

  url "https://www.hogbaysoftware.com/bike/releases/#{version.csv.second}.dmg"
  name "Bike"
  desc "Record and process your ideas"
  homepage "https://www.hogbaysoftware.com/bike/"

  livecheck do
    url "https://www.hogbaysoftware.com/bike/releases/index.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Bike.app"

  zap trash: [
    "~/Library/Application Scripts/com.hogbaysoftware.Bike",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hogbaysoftware.bike.sfl*",
    "~/Library/Containers/com.hogbaysoftware.Bike",
  ]
end
