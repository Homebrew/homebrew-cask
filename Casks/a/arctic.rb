cask "arctic" do
  version "25.2.0,56,20250926102928"
  sha256 "5fcb71c093f34fdf70afdcbf4130d8a9201e6a6820d9f589dcf99a6b75741279"

  url "https://updates.hedge.video/arctic/macos/updates/production/Arctic_#{version.csv.third}_v#{version.csv.first}b#{version.csv.second}/Arctic-#{version.csv.second}.zip"
  name "Arctic"
  desc "Display and manage Final Cut Pro X libraries"
  homepage "https://hedge.video/arctic"

  livecheck do
    url "https://updates.hedge.video/arctic/macos/appcast/arctic-prod.xml"
    regex(/Arctic[._-](\d+)[._-]/i)
    strategy :sparkle do |item, regex|
      date = item.url[regex, 1]
      next if date.blank?

      "#{item.short_version},#{item.version},#{date}"
    end
  end

  auto_updates true
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
