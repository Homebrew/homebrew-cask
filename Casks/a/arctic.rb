cask "arctic" do
  version "24.2.2,30,20240717024427"
  sha256 "fee8a0bc7d36b56d6c382b176aa67532c0de370676ebdcc59807f5dbaa88252e"

  url "https://updates.hedge.video/arctic/macos/updates/production/Arctic_#{version.csv.third}_v#{version.csv.first}b#{version.csv.second}/Arctic-#{version.csv.second}.zip"
  name "Arctic"
  desc "Display and manage Final Cut Pro X libraries"
  homepage "https://hedge.video/arctic"

  livecheck do
    url "https://updates.hedge.video/arctic/macos/appcast/arctic-prod.xml"
    strategy :sparkle do |item|
      date = item.url[/Arctic[._-](\d+)[._-]/, 1]
      "#{item.short_version},#{item.version},#{date}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "Arctic.app"

  zap trash: [
    "~/Library/Application Support/Arctic",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/video.hedge.arctic.mac.sfl*",
    "~/Library/HTTPStorages/video.hedge.Arctic.Mac",
    "~/Library/HTTPStorages/video.hedge.Arctic.Mac.binarycookies",
    "~/Library/Logs/Arctic",
    "~/Library/Preferences/video.hedge.Arctic.Mac.plist",
    "~/Library/Saved Application State/video.hedge.Arctic.Mac.savedState",
  ]
end
