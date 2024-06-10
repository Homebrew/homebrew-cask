cask "bike" do
  version "1.18.4,180"
  sha256 "549a03579fa43e24489740a702ce29ea776d8ee158281bfe37b8258f810eb9e1"

  url "https://www.hogbaysoftware.com/bike/releases/#{version.csv.second}.dmg"
  name "Bike"
  desc "Record and process your ideas"
  homepage "https://www.hogbaysoftware.com/bike/"

  livecheck do
    url "https://www.hogbaysoftware.com/bike/releases/index.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bike.app"

  zap trash: [
    "~/Library/Application Scripts/com.hogbaysoftware.Bike",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hogbaysoftware.bike.sfl*",
    "~/Library/Containers/com.hogbaysoftware.Bike",
  ]
end
