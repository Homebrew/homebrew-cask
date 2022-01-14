cask "paintbrush" do
  version "2.6.0,20210402"
  sha256 "9d12b754ec65edc77fa51d3a3c8a0b08ac863e10fd530bff219f9f22bb9dba3a"

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version.csv.first}/Paintbrush-#{version.csv.first}.zip",
      verified: "downloads.sourceforge.net/paintbrush/"
  name "Paintbrush"
  desc "Image editor"
  homepage "https://paintbrush.sourceforge.io/"

  livecheck do
    url "https://paintbrush.sourceforge.io/updates/paintbrush-release.xml"
    strategy :sparkle do |item|
      "#{item.short_version}.0,#{item.version}"
    end
  end

  app "Paintbrush.app"

  zap trash: [
    "~/Library/Application Scripts/com.soggywaffles.Paintbrush",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*",
    "~/Library/Caches/com.soggywaffles.Paintbrush",
    "~/Library/Containers/com.soggywaffles.Paintbrush",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.plist",
  ]
end
