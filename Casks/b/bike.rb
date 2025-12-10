cask "bike" do
  version "1.22.2,196"
  sha256 "59222704a85850ddd58d16994f87ec5f8d7cb687a20b50014306f8f328b3e609"

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
