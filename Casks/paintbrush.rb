cask "paintbrush" do
  version "2.5.2,20210331"
  sha256 "0fdfb727ba8fdcd50fa3ed8e768b8b781aadb918630488c723278eb0bab2a164"

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version.before_comma}/Paintbrush-#{version.before_comma}.zip",
      verified: "downloads.sourceforge.net/paintbrush/"
  name "Paintbrush"
  desc "Image editor"
  homepage "https://paintbrush.sourceforge.io/"

  livecheck do
    url "https://paintbrush.sourceforge.io/updates/paintbrush-release.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
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
