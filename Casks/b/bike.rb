cask "bike" do
  version "1.22.1,195"
  sha256 "1100ce57ee7dfd584f1ce5af2e0427315e0c08584f24145a9cc23536d7ec47de"

  url "https://www.hogbaysoftware.com/bike/releases/#{version.csv.second}.dmg"
  name "Bike"
  desc "Record and process your ideas"
  homepage "https://www.hogbaysoftware.com/bike/"

  # The Sparkle feed can contain items on the "preview" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://www.hogbaysoftware.com/bike/releases/index.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
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
