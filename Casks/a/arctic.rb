cask "arctic" do
  version "24.3.0,43,20241110055239"
  sha256 "393752bb870bfaf95d19cc42d4622c749b699a5dee705c6a4f68aa57a30199aa"

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
